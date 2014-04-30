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
	
	
	@RequestMapping(value="/GetAutocompleteSuggestions", method=RequestMethod.GET)
	public @ResponseBody Template getAutoCompleteSuggestions() throws Exception
	{
		String[] ResultArray=AutoCompleteImplOBj.getAutoCompleteSuggestions();
		return new Template(ResultArray);
		
	}
	
	@RequestMapping(value="/GetRecommendations", method=RequestMethod.GET)
    public  @ResponseBody Template addTemplates(@RequestParam("attribute") String[] usersChoices,HttpSession sessionID) throws Exception
    {
			List<RecommendedItem> list = recommendationImplOBj.recommendTemplates();
			boolean isAddSuccess=true;
			if(isAddSuccess == true)
			{
				//sessionID.setAttribute("userName", userName);
				System.out.println("The Service function returned True");
				System.out.println("The template ID is "+ usersChoices[0]);
				//return new ModelAndView("/TemplateSearchScreen");
				//return "success";
				return new Template(new String[]{"SuccessTemplate"});
			}
			//return "error";
		//return new ModelAndView("/index").addObject("AdditionError", "Retry!");
			return new Template(new String[]{"SuccessTemplate"});
	}
	
}
