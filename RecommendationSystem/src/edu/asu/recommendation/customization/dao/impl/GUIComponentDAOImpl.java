package edu.asu.recommendation.customization.dao.impl;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import edu.asu.recommendation.customization.dao.GUIComponentDAO;
import edu.asu.recommendation.customization.dto.GuiComponentDTO;
import edu.asu.recommendation.customization.dto.UserDTO;

@Repository
public class GUIComponentDAOImpl implements GUIComponentDAO{
	
	@Autowired
	private SessionFactory sessionFactory;

	public GuiComponentDTO getGUIAttributes(Integer userId, Integer templateId)
	{
		Session session = sessionFactory.getCurrentSession();
	    String queryString = "FROM GuiComponentDTO g WHERE userID.userId = :userId and templateID.templateId = :templateId";
	    Query query = session.createQuery(queryString);
		query.setParameter("userId", userId);
		query.setParameter("templateId", templateId);
		System.out.println("DAO " + userId + " " + templateId );
		GuiComponentDTO guiDto = (GuiComponentDTO) query.uniqueResult();
		if(guiDto == null)
		{
			System.out.println("Null");
			query.setParameter("userId", -1);
			
			guiDto = (GuiComponentDTO) query.uniqueResult();
		}
			
		System.out.println("GUI attribute1 = " + guiDto.getGuiAttribute1());
		return guiDto;
	
	}
	
	public Boolean updateGUIAttributes(GuiComponentDTO guiDTO)
	{
		try 
		{
			sessionFactory.getCurrentSession().update(guiDTO);
			return true;
		} 
		catch (Exception e) 
		{
			System.out.println(e);
			return false;
		}
		
	}
	
	public Boolean saveGUIAttributes(GuiComponentDTO guiDTO)
	{
		try 
		{
			sessionFactory.getCurrentSession().save(guiDTO);
			return true;
		} 
		catch (Exception e) 
		{
			System.out.println(e);
			return false;
		}
		
	}
	
	
	

}
