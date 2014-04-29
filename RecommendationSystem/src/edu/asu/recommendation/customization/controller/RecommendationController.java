package edu.asu.recommendation.customization.controller;

import java.io.BufferedReader;
import java.io.FileReader;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.mahout.cf.taste.recommender.RecommendedItem;
import org.codehaus.jackson.map.util.JSONPObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import edu.asu.recommendation.customization.service.impl.RecommendationImpl;
import edu.asu.recommendation.customization.service.impl.UserServiceImpl;

@Controller
public class RecommendationController 
{
	@Autowired
	private RecommendationImpl recommendationImplOBj;
	
	
	@RequestMapping(value="/GetAutocompleteSuggestions", method=RequestMethod.GET)
	public @ResponseBody Template getAutoCompleteSuggestions() throws Exception
	{
		//boolean isAddSuccess = recommendationImplOBj.getTemplates();
		//call autocomplete function here
		//String[] return_array=getTemplateNames();
		//return new Template(return_array);
		boolean isAddSuccess=true;
		if(isAddSuccess == true)
		{
			System.out.println("The Service function returned True");
			return new Template(new String[]{"Template1", "Template2"});
		}
		return new Template(new String[]{"FailTemplate1", "FailTemplate2"});
		
	}
	
	@RequestMapping(value="/TemplateSearchScreen", method=RequestMethod.GET)
    public  @ResponseBody Template addTemplates(@RequestParam("attribute") String[] templateID,HttpSession sessionID) throws Exception
    {
			List<RecommendedItem> list = recommendationImplOBj.getTemplates();
			boolean isAddSuccess=true;
			if(isAddSuccess == true)
			{
				//sessionID.setAttribute("userName", userName);
				System.out.println("The Service function returned True");
				System.out.println("The template ID is "+ templateID[0]);
				//return new ModelAndView("/TemplateSearchScreen");
				//return "success";
				return new Template(new String[]{"SuccessTemplate"});
			}
			//return "error";
		//return new ModelAndView("/index").addObject("AdditionError", "Retry!");
			return new Template(new String[]{"SuccessTemplate"});
	}
	
	/*public String[] getTemplateNames() throws Exception
	{
	@SuppressWarnings("resource")
	BufferedReader reader = new BufferedReader(new FileReader("G:\\Spring 2014\\Software Design\\Recommendation-Customization\\RecommendationSystem\\WebContent\\Template.csv"));
	String line = null;
	String splitcsvby = ",";
	String [] templateNames= {};
	while((line = reader.readLine()) != null)
	{
		templateNames = line.split(splitcsvby);
	}
	System.out.println(templateNames[1]);
	
	List<RecommendedItem> list = recommendationImplOBj.getTemplates();
	String[] tempnames = {};
	HashMap<String, String> hm = new HashMap<String, String>();
	hm.put(templateNames[0], templateNames[1]);
	for(int i=0; i<list.size(); i++)
	{
		 tempnames[i]= hm.get(list.get(i));
	}
	return templateNames;
	}*/
	
}
