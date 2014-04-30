package edu.asu.recommendation.customization.dao.impl;

import java.util.ArrayList;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import edu.asu.recommendation.customization.dao.ServiceComponentDAO;
import edu.asu.recommendation.customization.dao.UserDAO;
import edu.asu.recommendation.customization.dto.UserDTO;

@Repository
public  class ServiceComponentDAOImpl implements ServiceComponentDAO 	{

	
	@Autowired
	private SessionFactory sessionFactory;
	
	@SuppressWarnings("unchecked")
	@Override
	public String retrieveServiceList(String userID) {
		// TODO Auto-generated method stub
		
		ArrayList<String> servicesList = new ArrayList<String>();
		Session session = sessionFactory.openSession();
		String queryString = "FROM ServiceComponentDTO u WHERE u.userID = :userID";
		Query query = session.createQuery(queryString);
		query.setParameter("userName", userID);
		//servicesList = ((UserDTO) query.uniqueResult()).getPassword();
		//System.out.println("Password = " + password);
		//return password;

		
		return null;
	}

	@Override
	public String updateChangedParamService(String serviceID,
			String changedParam1ID, String changedParam2ID) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String updateChangedNameService(String serviceID,
			String oldComponent1ID, String changedComponentID) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String updateChangedReturnTypeService(String serviceID,
			String oldComponentID, String changedComponentID) {
		// TODO Auto-generated method stub
		return null;
	}

}



