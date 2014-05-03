package edu.asu.recommendation.customization.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import edu.asu.recommendation.customization.service.WorkflowService;

@Controller
public class WorkFlowController {

	@Autowired
	private WorkflowService workflowServiceImpl;
	
	@RequestMapping(value="/Workflowsaved", method=RequestMethod.POST)
    public ModelAndView saveWorkflow(@RequestParam("templateId") Integer templateId, @RequestParam("Step1") String stepOne, @RequestParam("Step2") String stepTwo, @RequestParam("Step3") String stepThree,
    		@RequestParam("Step4") String stepFour, @RequestParam("Step5") String stepFive, HttpSession sessionID)
    {
		String userName = (String)sessionID.getAttribute("userName");
		List<String> Steps = new ArrayList<String>();
		Steps.add(stepOne); Steps.add(stepTwo); Steps.add(stepThree); Steps.add(stepFour); Steps.add(stepFive);
		workflowServiceImpl.persistworkFlowservice(userName, 11, stepOne, stepTwo, stepThree, stepFour, stepFive);	
		return new ModelAndView("/templates/workflow/CustomizeWorkFlow").addObject("stepsList", Steps);

	}
	
	@RequestMapping(value="/CustomizeWorkFlow", method=RequestMethod.POST)
    public ModelAndView loadWorkflow(@RequestParam("templateId") Integer templateId, HttpSession sessionID, ModelMap model)
    {
		String userName = (String)sessionID.getAttribute("userName");
		List<String> stepsList = workflowServiceImpl.loadworkFlowservice(userName, 11);
		model.addAttribute("templateId", 11);
		return new ModelAndView("/templates/workflow/CustomizeWorkFlow").addObject("stepsList", stepsList);

	}
	
}
