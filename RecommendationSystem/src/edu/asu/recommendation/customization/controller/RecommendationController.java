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
    public ModelAndView addTemplates(@RequestParam("templates") Integer[] templates,HttpSession sessionID)
    {
		
			boolean isAddSuccess = recommendationImplOBj.getTemplates(templates);
			if(isAddSuccess == true)
			{
				//sessionID.setAttribute("userName", userName);
				return new ModelAndView("/TemplateSearchScreen");
			}
			
		return new ModelAndView("/index").addObject("loginError", "Retry!");
	}
	
}
