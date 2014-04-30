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
	public String[] getAutoCompleteSuggestions() throws Exception 
	{
		BufferedReader reader = new BufferedReader(new FileReader("C:\\Users\\Udai\\Desktop\\work\\Recommendation-Customization\\RecommendationSystem\\WebContent\\Template.csv"));
		String line = null;
		String splitbycomma = ",";
		String [] OnelineData= {};
		HashMap<String, String> hm = new HashMap<String, String>();
		
		
		//printing the contents of template.csv file
		while((line = reader.readLine()) != null)
		{
			OnelineData = line.split(splitbycomma);
			System.out.print(OnelineData[0]+ " ");
			System.out.println(OnelineData[1]);
			hm.put(OnelineData[0], OnelineData[1]);
			System.out.println("Hash map now has " + hm.get(OnelineData[0]));
		}
		
		reader.close();
		String[] tempnames=new String[hm.size()];
		
		for(int i=1; i<=hm.size(); i++)
		{
			String s=String.valueOf(i);
			 tempnames[i-1] = hm.get(s);
			 System.out.println(tempnames[i-1]);
		}
		return tempnames;
	}

}
