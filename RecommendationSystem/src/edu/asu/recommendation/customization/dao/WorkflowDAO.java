package edu.asu.recommendation.customization.dao;

import java.util.List;

import edu.asu.recommendation.customization.dto.WorkflowComponentDTO;

public interface WorkflowDAO {

	public void persistworkFlow(String userName, Integer templateId, String stepOne,String stepTwo,String stepThree,String stepFour,String stepFive);
	
	public List<String> loadworkFlow(String userName, Integer templateId);
}
