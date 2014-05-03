package edu.asu.recommendation.customization.controller;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.mail.Session;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.mahout.cf.taste.recommender.RecommendedItem;
import org.codehaus.jackson.map.util.JSONPObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import edu.asu.recommendation.customization.dao.impl.UserDAOImpl;
import edu.asu.recommendation.customization.service.impl.AutoCompleteSuggestionsImpl;
import edu.asu.recommendation.customization.service.impl.RecommendationImpl;
import edu.asu.recommendation.customization.service.impl.UserServiceImpl;

@Controller
public class RecommendationController 
{
	@Autowired
	private RecommendationImpl recommendationImplOBj;
	@Autowired
	private AutoCompleteSuggestionsImpl AutoCompleteImplOBj;
	@Autowired
	private UserDAOImpl userDAOImplobject;

	private HashMap<String,String> IDtoName=new HashMap<String,String>();
	private HashMap<String,String> NametoID=new HashMap<String,String>();;
	
	@RequestMapping(value="/GetAutocompleteSuggestions", method=RequestMethod.GET)
	public @ResponseBody Template getAutoCompleteSuggestions(HttpServletRequest request) throws Exception
	{
		//System.out.println(Long.valueOf("100").longValue());
		buildHashMaps(request.getSession().getServletContext().getRealPath("/"));
		String[] ResultArray=AutoCompleteImplOBj.getAutoCompleteSuggestions(IDtoName);
		return new Template(ResultArray);
		
	}
	
	private void buildHashMaps(String contextPath) throws Exception 
	{
		// TODO Auto-generated method stub
		BufferedReader reader = new BufferedReader(new FileReader(contextPath + "/Template.csv"));
		String line = null;
		String splitbycomma = ",";
		String [] OnelineData= {};
		//printing the contents of template.csv file
		while((line = reader.readLine()) != null)
		{
			OnelineData = line.split(splitbycomma);
			System.out.print(OnelineData[0]+ " ");
			System.out.println(OnelineData[1]);
			IDtoName.put(OnelineData[0], OnelineData[1]);
			NametoID.put(OnelineData[1], OnelineData[0]);
			System.out.println("Hash map now has " + IDtoName.get(OnelineData[0]));
		}
		
		reader.close();
	}

	@RequestMapping(value="/GetRecommendations", method=RequestMethod.GET)
    public  @ResponseBody Template addTemplates(@RequestParam("attribute") String[] usersChoices, HttpServletRequest request, HttpSession sessionID) throws Exception
    {
			String username = (String)sessionID.getAttribute("userName");
			System.out.println("The username is "+username );
			//get the corresponding userID and pass it on to the updateCSVfilefunction
			Integer user_id=userDAOImplobject.retrieveUserID(username);
			System.out.println("The user id is"+ user_id);
		    String userid="100";
		    user_id=100;
			updateCSVfile(String.valueOf(user_id),usersChoices, request.getSession().getServletContext().getRealPath("/"));
			ArrayList<Integer> tempIDs=getTemplateIDS(usersChoices);
			for(String s: usersChoices)
			{
				System.out.println("The user selected"+ s);
			}
			
			List<RecommendedItem> list = recommendationImplOBj.recommendTemplates(user_id, request.getSession().getServletContext().getRealPath("/"), tempIDs);
			System.out.println("size of all_items is"+list.size());
			//take template IDs from recommenderlist, lookup for template names on HashMAP and send it to the browser in the form of string array.
			String[] recommendedItemNames=new String[list.size()];
			int count=0;
			for(RecommendedItem r: list)
			{
				System.out.println("Recommended Item: "+ r.getItemID());
				long id=r.getItemID();
				Integer i=(int)(long) id;
				recommendedItemNames[count]=IDtoName.get(String.valueOf(i));
				System.out.println(recommendedItemNames[count]);
				count++;
			}
			
			return new Template(recommendedItemNames);
	}

	private void updateCSVfile(String userID,String[] usersChoices, String contextPath) throws Exception 
	{
		BufferedReader br = new BufferedReader(new FileReader(contextPath + "/HistoricalData_revised.csv"));
		FileWriter writer= new FileWriter(contextPath + "/temporary.csv");
		String line = "";
		String cvsSplitBy = ",";
		while ((line = br.readLine()) != null) 
		{
			String[] historicaldata = line.split(cvsSplitBy);
			writer.append(historicaldata[0]);
			writer.append(',');
			writer.append(historicaldata[1]);
			writer.append(',');
			writer.append(historicaldata[2]);
			writer.append('\n');
			writer.flush();
 
		}
		for(String s: usersChoices)
		{
			 writer.append(userID);//user id needs to be taken from the database
			 writer.append(',');
			 writer.append(NametoID.get(s));//the template ID of string s(Template Name)
			 writer.append(',');
			 writer.append("1");//indicates he has used it
		     writer.append('\n');
		     writer.flush();
		}
		
		 writer.close();
		 br.close();
	}

	private ArrayList<Integer> getTemplateIDS(String[] usersChoices) 
	{
		// TODO Auto-generated method stub
		ArrayList<Integer> tempIDs=new ArrayList<Integer>();
		for(String s: usersChoices)
		{
			String tempID=NametoID.get(s);
			System.out.println("template number: "+tempID);
			Integer ID=Integer.parseInt(tempID);
			//Long l=Long.valueOf(tempID).longValue();
			tempIDs.add(ID);
			
		}
		return tempIDs;
	}

	
	
}
