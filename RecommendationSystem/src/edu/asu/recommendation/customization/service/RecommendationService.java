package edu.asu.recommendation.customization.service;

import java.util.List;

import org.apache.mahout.cf.taste.recommender.RecommendedItem;

public interface RecommendationService 
{

	//public boolean getTemplates(Integer[] templates) throws Exception;
	public List<RecommendedItem> getTemplates() throws Exception;
}
