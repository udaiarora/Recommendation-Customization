package edu.asu.recommendation.customization.controller;

import javax.servlet.http.HttpSession;

import org.codehaus.jackson.map.util.JSONPObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import edu.asu.recommendation.customization.service.impl.RecommendationImpl;
import edu.asu.recommendation.customization.service.impl.UserServiceImpl;

@Controller
public class RecommendationController 
{
	@Autowired
	private RecommendationImpl recommendationImplOBj;
	
	@RequestMapping(value="/TemplateSearchScreen", method=RequestMethod.GET)
    public ModelAndView addTemplates(@RequestParam("attribute") String[] templateID,HttpSession sessionID) throws Exception
	//public ModelAndView addTemplates(@RequestParam("username") String userName, @RequestParam("password") String passWord, HttpSession sessionID) throws Exception
    {
		
			//boolean isAddSuccess = recommendationImplOBj.getTemplates(templates);
			boolean isAddSuccess = recommendationImplOBj.getTemplates();
			if(isAddSuccess == true)
			{
				//sessionID.setAttribute("userName", userName);
				System.out.println("The Service function returned True");
				System.out.println("The template ID is "+ templateID[0]);
				return new ModelAndView("/TemplateSearchScreen");
			}
			
		return new ModelAndView("/index").addObject("AdditionError", "Retry!");
	}
	
}
