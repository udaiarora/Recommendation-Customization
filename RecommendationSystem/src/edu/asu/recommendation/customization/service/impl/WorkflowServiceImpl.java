package edu.asu.recommendation.customization.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import edu.asu.recommendation.customization.dao.WorkflowDAO;
import edu.asu.recommendation.customization.service.WorkflowService;

@Service
public class WorkflowServiceImpl implements WorkflowService{
	
	@Autowired
	private WorkflowDAO workflowDAOImpl;

	@Transactional
	public void persistworkFlowservice(String userName, Integer templateId, String stepOne, String stepTwo, String stepThree, String stepFour, String stepFive)
	{
	
		workflowDAOImpl.persistworkFlow(userName, templateId, stepOne, stepTwo, stepThree, stepFour, stepFive);
	
	}
	
	@Transactional
	public List<String> loadworkFlowservice(String userName, Integer templateId)
	{
        List<String> stepsList = workflowDAOImpl.loadworkFlow(userName, templateId);
		
		return stepsList;
	}
}
