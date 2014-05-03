package edu.asu.recommendation.customization.service;

import java.util.ArrayList;
import java.util.List;

import org.apache.mahout.cf.taste.recommender.RecommendedItem;

public interface RecommendationService 
{
	public List<RecommendedItem> recommendTemplates(Integer userid, String contextPath,  ArrayList<Integer> TemplateIDs) throws Exception;
}
