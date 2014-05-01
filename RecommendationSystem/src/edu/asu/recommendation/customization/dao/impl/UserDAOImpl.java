package edu.asu.recommendation.customization.dao.impl;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import edu.asu.recommendation.customization.dao.UserDAO;
import edu.asu.recommendation.customization.dto.UserDTO;

@Repository
public class UserDAOImpl implements UserDAO 	
{
	
	@Autowired
	private SessionFactory sessionFactory;
	
	public String retrievePassword(String userName)	
	{
		Session session = sessionFactory.getCurrentSession();
		String queryString = "FROM UserDTO u WHERE u.userName = :userName";
		Query query = session.createQuery(queryString);
		query.setParameter("userName", userName);
		String password = ((UserDTO) query.uniqueResult()).getPassword();
		//System.out.println("Password = " + password);
		return password;
	}
	
	public UserDTO getUserDTO(String userName)
	{
		Session session = sessionFactory.getCurrentSession();
		String queryString = "FROM UserDTO u WHERE u.userName = :userName";
		Query query = session.createQuery(queryString);
		query.setParameter("userName", userName);
		UserDTO userDTO = (UserDTO) query.uniqueResult();
		//System.out.println("Password = " + password);
		return userDTO;
	}

	public Integer retrieveUserID(String userName)	
	{
		Session session = sessionFactory.openSession();
		String queryString = "FROM UserDTO u WHERE u.userName = :userName";
		Query query = session.createQuery(queryString);
		query.setParameter("userName", userName);
		Integer user_id = ((UserDTO) query.uniqueResult()).getUserId();
		//System.out.println("Password = " + password);
		return user_id;
	}
}



