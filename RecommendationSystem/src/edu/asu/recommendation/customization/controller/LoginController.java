package edu.asu.recommendation.customization.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import edu.asu.recommendation.customization.dto.GuiComponentDTO;
import edu.asu.recommendation.customization.dto.TemplatesDTO;
import edu.asu.recommendation.customization.dto.UserDTO;
import edu.asu.recommendation.customization.service.*;


	@Controller
	public class LoginController {
		
		@Autowired
		private UserService userService;
		
		@Autowired
		private GuiComponentService guiService;
		
		@Autowired
		private TemplateService templateService;

		
		@RequestMapping(value="/Welcome", method=RequestMethod.POST)
	    public ModelAndView userLogin(@RequestParam("username") String userName, @RequestParam("password") String passWord, HttpSession sessionID)
	    {
			boolean isFormValidationSucccess = validateLoginFields(userName, passWord);	
			if(isFormValidationSucccess == true)
			{
				boolean isLoginSuccess = userServiceImpl.validateUser(userName, passWord);
				if(isLoginSuccess == true)
				{
					sessionID.setAttribute("userName", userName);
					return new ModelAndView("/TemplateSearchScreen");
				}
			}
			return new ModelAndView("/index").addObject("loginError", "Invalid UserName or Password!");
		}
		
		public boolean validateLoginFields(String userName, String password)
		{
			
			if((userName.isEmpty()) || (password.isEmpty()))
			{
				return false;
			}
			return true;
		}
}
	 
	 
	
