package edu.asu.recommendation.customization.service;

import java.util.HashMap;

public interface AutoCompleteSuggestions 
{
	
	public String[] getAutoCompleteSuggestions(HashMap<String, String> IDtoName) throws Exception;
}
