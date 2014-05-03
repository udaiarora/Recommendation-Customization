package edu.asu.recommendation.customization.service;

import java.util.List;

public interface WorkflowService {
	
	public void persistworkFlowservice(String userName, Integer templateId, String stepOne, String stepTwo, String stepThree, String stepFour, String stepFive);

	public List<String> loadworkFlowservice(String userName, Integer templateId);
	
}
