package edu.asu.recommendation.customization.dao.impl;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import edu.asu.recommendation.customization.dao.ServiceComponentDAO;
import edu.asu.recommendation.customization.dto.ServicesComponentDTO;


@Repository
public  class ServiceComponentDAOImpl implements ServiceComponentDAO 	{
	
	@Autowired
	private SessionFactory sessionFactory;
	
	
	public ServicesComponentDTO getServiceComponet (Integer userId, Integer templateId){
		Session session = sessionFactory.getCurrentSession();
		String queryString = "FROM ServicesComponentDTO s WHERE userID.userId = :userId and templateID.templateId = :templateId";
		Query query = session.createQuery(queryString);
		query.setParameter("userId", userId);
		query.setParameter("templateId", templateId);
		System.out.println("ServiceDAO UserID" + userId + "ServiceDAO TemplateID " + templateId);
		ServicesComponentDTO servDTO = (ServicesComponentDTO) query.uniqueResult();
		if(servDTO == null)
		{
			System.out.println("Null");
			query.setParameter("userId", -1);
			
			servDTO = (ServicesComponentDTO) query.uniqueResult();
		}
		System.out.println("ServiceInputDataType1 = " + servDTO.getServiceInputdatatype1());
		System.out.println("ServiceInputDataType2 = " + servDTO.getServiceInputdatatype2());
		System.out.println("ServiceOutputDataType = " + servDTO.getServiceOutputdatatype());
		return servDTO;
	}
	
	public Boolean updateServiceAttributes (ServicesComponentDTO serviceDTO){
		// update a whole row using DTO.
	
		try 
		{
			sessionFactory.getCurrentSession().update(serviceDTO);
			return true;
		} 
		catch (Exception e) 
		{
			//e.printStackTrace();
			System.out.println(e);
			return false;
		}
	}

}
