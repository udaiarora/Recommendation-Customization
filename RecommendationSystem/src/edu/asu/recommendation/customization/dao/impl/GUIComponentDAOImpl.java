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
import edu.asu.recommendation.customization.form.GUIFormBean;

@Repository
public class GUIComponentDAOImpl implements GUIComponentDAO{
	
	@Autowired
	private SessionFactory sessionFactory;

	public GuiComponentDTO getGUIAttributes(Integer userId, Integer templateId, Integer guiId)
	{
		Session session = sessionFactory.getCurrentSession();
	    String queryString = "FROM GuiComponentDTO g WHERE userID.userId = :userId and templateID.templateId = :templateId and g.guiId = :guiId";
	    Query query = session.createQuery(queryString);
		query.setParameter("userId", userId);
		query.setParameter("templateId", templateId);
		query.setParameter("guiId", guiId);
		System.out.println("DAO " + userId + " " + templateId + " " + guiId );
		GuiComponentDTO guiDto = (GuiComponentDTO) query.uniqueResult();
		if(guiDto == null)
			System.out.println("Null");
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
	
	
	

}
