package edu.asu.recommendation.customization.service.impl;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import edu.asu.recommendation.customization.service.RecommendationService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.asu.recommendation.customization.dao.*;
import edu.asu.recommendation.customization.dao.impl.UserDAOImpl;
import edu.asu.recommendation.customization.service.UserService;

import org.apache.mahout.cf.taste.impl.model.file.FileDataModel;
import org.apache.mahout.cf.taste.impl.neighborhood.ThresholdUserNeighborhood;
import org.apache.mahout.cf.taste.impl.recommender.GenericItemBasedRecommender;
import org.apache.mahout.cf.taste.impl.recommender.GenericUserBasedRecommender;
import org.apache.mahout.cf.taste.impl.similarity.PearsonCorrelationSimilarity;
import org.apache.mahout.cf.taste.model.DataModel;
import org.apache.mahout.cf.taste.neighborhood.UserNeighborhood;
import org.apache.mahout.cf.taste.recommender.ItemBasedRecommender;
import org.apache.mahout.cf.taste.recommender.RecommendedItem;
import org.apache.mahout.cf.taste.recommender.UserBasedRecommender;
import org.apache.mahout.cf.taste.similarity.ItemSimilarity;
import org.apache.mahout.cf.taste.similarity.UserSimilarity;

@Service
public class RecommendationImpl implements RecommendationService
//public class RecommendationImpl
{

	public List<RecommendedItem> recommendTemplates(Integer user_id, String contextPath , ArrayList<Integer> TemplateIDs ) throws Exception
	{
			List<RecommendedItem> all_items=new ArrayList<RecommendedItem>();
			System.out.println( "Starting the recommender system!" );
			DataModel model = new FileDataModel(new File(contextPath + "/temporary.csv"));
			UserSimilarity user_similarity = new PearsonCorrelationSimilarity(model);
			UserNeighborhood user_neighborhood = new ThresholdUserNeighborhood(0.1, user_similarity, model);
			UserBasedRecommender userBasedRecommender = new GenericUserBasedRecommender(model, user_neighborhood, user_similarity);
			//Integer i=100;
			//all_items = userBasedRecommender.recommend(100, 3);
			
			
			//for(Integer i:TemplateIDs)
			//{
				//System.out.println("The template ID is"+ i);
				List<RecommendedItem> top_items = userBasedRecommender.recommend(user_id, 3);
				System.out.println("Inside loop....");
				for (RecommendedItem re : top_items) 
				{
				  System.out.println("This item was recommended"+re);
				  all_items.add(re);
				}
			//}
			System.out.println("Computing User Based Recommendation...."+"\n");
			
			float preference=userBasedRecommender.estimatePreference(6, 10);
			System.out.println("The user 6's preference to item number 10 is: "+ preference);
			// TODO Auto-generated method stub
			ItemSimilarity item_similarity = new PearsonCorrelationSimilarity(model);
			ItemBasedRecommender itemBasedRecommender = new GenericItemBasedRecommender(model,item_similarity);
			List<RecommendedItem> most_similar_items = itemBasedRecommender.mostSimilarItems(2, 3);
			System.out.println("\n"+"Computing Item Based Recommendation...."+"\n");
			for (RecommendedItem recommendation : most_similar_items) 
			{
			  System.out.println(recommendation);
			}
			List<RecommendedItem> similar_items = itemBasedRecommender.mostSimilarItems(3, 3);
			System.out.println("\n"+"Computing Item Based Recommendation...."+"\n");
			for (RecommendedItem recommendation : similar_items) 
			{
			  System.out.println(recommendation);
			}
			

		/*{
			// TODO Auto-generated catch block
			System.out.println("I am here!!");
			System.out.println(e.getClass());
			System.out.println(e.toString());
			System.out.println(e.getLocalizedMessage());
			System.out.println(e.getCause());
			System.out.println(e.getMessage());
			e.printStackTrace();
			//e.printStackTrace();
		}*/
		return all_items;
		
	}

}
