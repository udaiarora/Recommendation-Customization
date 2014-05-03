package edu.asu.recommendation.customization.dao.impl;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import edu.asu.recommendation.customization.dao.DataModelComponentDAO;
import edu.asu.recommendation.customization.dto.DatamodelComponentDTO;

@Repository
public class DataModelComponentDAOImpl implements DataModelComponentDAO{

	@Autowired
	SessionFactory sessionFactory;
	
	public DatamodelComponentDTO getDataModelAttributes(Integer userId, Integer templateId)
	{
		Session session = sessionFactory.getCurrentSession();
	    String queryString = "FROM DatamodelComponentDTO d WHERE userID.userId = :userId and templateID.templateId = :templateId";
	    Query query = session.createQuery(queryString);
		query.setParameter("userId", userId);
		query.setParameter("templateId", templateId);
		System.out.println("DAO " + userId + " " + templateId );
		DatamodelComponentDTO dataDto = (DatamodelComponentDTO) query.uniqueResult();
		if(dataDto == null)
		{
			System.out.println("Null");
			query.setParameter("userId", -1);
			
			dataDto = (DatamodelComponentDTO) query.uniqueResult();
		}
			
		//System.out.println("GUI attribute1 = " + dataDto.getGuiAttribute1());
		return dataDto;
	
	}
	
	public Boolean updateDataModelAttributes(DatamodelComponentDTO dataDTO)
	{
		try 
		{
			sessionFactory.getCurrentSession().update(dataDTO);
			return true;
		} 
		catch (Exception e) 
		{
			System.out.println(e);
			return false;
		}
		
	}
	
	public Boolean saveDataModelAttributes(DatamodelComponentDTO dataDTO)
	{
		try 
		{
			sessionFactory.getCurrentSession().save(dataDTO);
			return true;
		} 
		catch (Exception e) 
		{
			System.out.println(e);
			return false;
		}
		
	}
	

}
