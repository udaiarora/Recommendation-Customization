package edu.asu.recommendation.customization.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import edu.asu.recommendation.customization.dao.TemplateDAO;
import edu.asu.recommendation.customization.dao.UserDAO;
import edu.asu.recommendation.customization.dao.WorkflowDAO;
import edu.asu.recommendation.customization.dto.UserDTO;
import edu.asu.recommendation.customization.dto.WorkflowComponentDTO;

@Repository
public class WorkflowDAOImpl implements WorkflowDAO{

	@Autowired
	private SessionFactory sessionFactory;

	@Autowired
	private UserDAO userDAOImpl;

	@Autowired
	private TemplateDAO templateDAOImpl;
	

	public void persistworkFlow(String userName, Integer templateId, String step1, String step2, String step3, String step4, String step5)
	{
		
		String queryString = "FROM WorkflowComponentDTO w WHERE userID.userId = :userId AND templateID.templateId = :templateId";
		Query query = sessionFactory.getCurrentSession().createQuery(queryString);
		Integer userId = (userDAOImpl.getUserDTO(userName)).getUserId();
		query.setParameter("userId", userId);
		query.setParameter("templateId", templateId);
		List <WorkflowComponentDTO> workFlow= query.list();
		List<String> stepsList = new ArrayList<>();

		WorkflowComponentDTO workflowComponentDTO = new WorkflowComponentDTO();
		workflowComponentDTO.setStep1(step1);
		workflowComponentDTO.setStep2(step2);
		workflowComponentDTO.setStep3(step3);
		workflowComponentDTO.setStep4(step4);
		workflowComponentDTO.setStep5(step5);
		workflowComponentDTO.setUserID(userDAOImpl.getUserDTO(userName));
		workflowComponentDTO.setTemplateID(templateDAOImpl.getTemplateDTO(templateId, userId));
		workflowComponentDTO.setCustomizationType("Workflow Customization");
		workflowComponentDTO.setWorkflowName(userName+"'s Workflow");
		if(workFlow.isEmpty())
		{
		try
		{
			sessionFactory.getCurrentSession().save(workflowComponentDTO);
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		}
		else
		{
			Query query2 = sessionFactory.getCurrentSession().createQuery("UPDATE WorkflowComponentDTO w SET w.step1 = :step1, w.step2 = :step2, w.step3 = :step3, w.step4 = :step4, w.step5 = :step5 WHERE userID.userId = :userId AND templateID.templateId = :templateId");
			query2.setParameter("step1", step1);
			query2.setParameter("step2", step2);
			query2.setParameter("step3", step3);
			query2.setParameter("step4", step4);
			query2.setParameter("step5", step5);
			query2.setParameter("templateId", templateId);
			query2.setParameter("userId",userDAOImpl.getUserDTO(userName).getUserId());
			query2.executeUpdate();
		}
	}
	
	
	@SuppressWarnings("unchecked")
	public List<String> loadworkFlow(String userName, Integer templateId)
	{
		System.out.println("UserName: " + userName + " templateId " + templateId);
		Session session = sessionFactory.getCurrentSession();
		String queryString = "FROM WorkflowComponentDTO w WHERE userID.userId = :userId AND templateID.templateId = :templateId";
		Query query = session.createQuery(queryString);
		Integer userId = (userDAOImpl.getUserDTO(userName)).getUserId();
		query.setParameter("userId", userId);
		query.setParameter("templateId", 11);
		List <WorkflowComponentDTO> workFlow= query.list();
		List<String> stepsList = new ArrayList<>();
		if(!workFlow.isEmpty())
		{
		stepsList.add(workFlow.get(0).getStep1());
		stepsList.add(workFlow.get(0).getStep2());
		stepsList.add(workFlow.get(0).getStep3());
		stepsList.add(workFlow.get(0).getStep4());
		stepsList.add(workFlow.get(0).getStep5());
		return stepsList;
		}
		else
		{
			String queryString2 = "FROM WorkflowComponentDTO w WHERE userID.userId = :userId AND templateID.templateId = :templateId";
			Query query2 = session.createQuery(queryString2);
			Integer userId2 = -1;
			query2.setParameter("userId", userId2);
			query2.setParameter("templateId", templateId);
			List <WorkflowComponentDTO> workFlow2= query2.list();
			List<String> stepsList2 = new ArrayList<>();
			stepsList2.add(workFlow2.get(0).getStep1());
			stepsList2.add(workFlow2.get(0).getStep2());
			stepsList2.add(workFlow2.get(0).getStep3());
			stepsList2.add(workFlow2.get(0).getStep4());
			stepsList2.add(workFlow2.get(0).getStep5());
			return stepsList2;	
		}


	}

}
