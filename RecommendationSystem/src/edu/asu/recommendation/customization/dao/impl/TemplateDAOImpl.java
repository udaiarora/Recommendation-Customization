package edu.asu.recommendation.customization.dao.impl;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import edu.asu.recommendation.customization.dao.TemplateDAO;
import edu.asu.recommendation.customization.dto.TemplatesDTO;

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
}
