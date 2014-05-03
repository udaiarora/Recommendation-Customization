package edu.asu.recommendation.customization.service.impl;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.util.HashMap;
import java.util.List;

import org.apache.mahout.cf.taste.recommender.RecommendedItem;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.asu.recommendation.customization.service.AutoCompleteSuggestions;

@Service
public class AutoCompleteSuggestionsImpl implements AutoCompleteSuggestions
{

	@Override
	public String[] getAutoCompleteSuggestions(HashMap<String,String> IDtoName) throws Exception 
	{
		//BufferedReader reader = new BufferedReader(new FileReader( "\Template.csv"));

		
		String[] tempnames=new String[IDtoName.size()];
		
		for(int i=1; i<=IDtoName.size(); i++)
		{
			String s=String.valueOf(i);
			 tempnames[i-1] = IDtoName.get(s);
			 System.out.println(tempnames[i-1]);
		}
		
		//reader.close();
		return tempnames;
	}

}
