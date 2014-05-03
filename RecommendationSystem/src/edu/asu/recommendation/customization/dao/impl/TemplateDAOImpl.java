package edu.asu.recommendation.customization.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import edu.asu.recommendation.customization.dao.TemplateDAO;
import edu.asu.recommendation.customization.dto.DatamodelComponentDTO;
import edu.asu.recommendation.customization.dto.GuiComponentDTO;
import edu.asu.recommendation.customization.dto.ServicesComponentDTO;
import edu.asu.recommendation.customization.dto.TemplatesDTO;
import edu.asu.recommendation.customization.dto.UserTemplateSubscriptionDTO;
import edu.asu.recommendation.customization.dto.WorkflowComponentDTO;

@Repository
public class TemplateDAOImpl implements TemplateDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	public TemplatesDTO getTemplateDTO(Integer userId, Integer templateId)
	{
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("FROM TemplatesDTO t WHERE userID.userId = :userId and t.templateId = :templateId");
		query.setParameter("userId", userId);
		query.setParameter("templateId", templateId);
		TemplatesDTO tDTO = (TemplatesDTO) query.uniqueResult();
		return tDTO;
	}
	
	public List<TemplatesDTO> getTemplatesList(Integer userId)
	{
		List<UserTemplateSubscriptionDTO> userSubscriptionDTO = new ArrayList<UserTemplateSubscriptionDTO>();
		List<TemplatesDTO> templateList = new ArrayList<TemplatesDTO>();
		try
		{
			Session session = sessionFactory.getCurrentSession();
			Query query = session.createQuery("FROM UserTemplateSubscriptionDTO u WHERE userID.userId = :userId");
			query.setParameter("userId", userId);
			userSubscriptionDTO = query.list();
			for(UserTemplateSubscriptionDTO u : userSubscriptionDTO)
			{
				templateList.add(u.getTemplateID());
			}
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return templateList;
		
	}
	
	public List<String> getComponentsList(Integer userId, Integer templateId, List<String> componentsList)
	{
		//List<UserTemplateSubscriptionDTO> userSubscriptionDTO = new ArrayList<UserTemplateSubscriptionDTO>();
		//List<String> componentsList = new ArrayList<String>();
		try
		{
			Session session = sessionFactory.getCurrentSession();
		    String queryString = "FROM GuiComponentDTO g WHERE userID.userId = :userId and templateID.templateId = :templateId";
		    Query query = session.createQuery(queryString);
			query.setParameter("userId", userId);
			query.setParameter("templateId", templateId);
			System.out.println("UserId = " + userId + "templateId = " + templateId);
			System.out.println("DAO " + userId + " " + templateId );
			GuiComponentDTO guiDto = (GuiComponentDTO) query.uniqueResult();
			if(guiDto == null)
			{
				System.out.println("Null");
				query.setParameter("userId", -1);
				
				guiDto = (GuiComponentDTO) query.uniqueResult();
			}
			
			String queryWork = "FROM WorkflowComponentDTO w WHERE userID.userId = :userId and templateID.templateId = :templateId";
		    Query qWork = session.createQuery(queryWork);
			qWork.setParameter("userId", userId);
			qWork.setParameter("templateId", templateId);
			System.out.println("DAO " + userId + " " + templateId );
			WorkflowComponentDTO workDto = (WorkflowComponentDTO) qWork.uniqueResult();
			if(workDto == null)
			{
				System.out.println("Null");
				qWork.setParameter("userId", -1);
				
				workDto = (WorkflowComponentDTO) qWork.uniqueResult();
			}
			
			String queryServ = "FROM ServicesComponentDTO w WHERE userID.userId = :userId and templateID.templateId = :templateId";
		    Query qServ = session.createQuery(queryServ);
		    qServ.setParameter("userId", userId);
		    qServ.setParameter("templateId", templateId);
			System.out.println("DAO " + userId + " " + templateId );
			ServicesComponentDTO servDto = (ServicesComponentDTO) qServ.uniqueResult();
			if(servDto == null)
			{
				System.out.println("Null");
				qServ.setParameter("userId", -1);
				
				servDto = (ServicesComponentDTO) qServ.uniqueResult();
			}
			
			String queryStr = "FROM DatamodelComponentDTO d WHERE userID.userId = :userId and templateID.templateId = :templateId";
		    Query q = session.createQuery(queryStr);
			q.setParameter("userId", userId);
			q.setParameter("templateId", templateId);
			System.out.println("DAO " + userId + " " + templateId );
			DatamodelComponentDTO dataDto = (DatamodelComponentDTO) q.uniqueResult();
			if(dataDto == null)
			{
				System.out.println("Null");
				q.setParameter("userId", -1);
				
				dataDto = (DatamodelComponentDTO) q.uniqueResult();
			}
				
			//DatamodelComponentDTO dataDTO = new DataModelComponentDAOImpl().getDataModelAttributes(userId, templateId);
			//System.out.println(guiDto.getGuiName());
			/*if(templateId == 11)
			{
				componentsList.add("Login Screen");
				componentsList.add("Authorization WorkFlow");
				componentsList.add("Validation Service");
				componentsList.add("User Data Model");
			}
			if(templateId == 40)
			{
				componentsList.add("Book Search Screen");
				componentsList.add("Book Search WorkFlow");
				componentsList.add("Retrieve Book Service");
				componentsList.add("Book Data Model" );
			}
			if(templateId == 44)
			{
				componentsList.add("Book Return Screen");
				componentsList.add("Book Return WorkFlow");
				componentsList.add("Book Return Service" );
				componentsList.add("Books Data Model" );
			}*/
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return componentsList;
		
	}
	
	
}
