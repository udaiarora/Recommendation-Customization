package edu.asu.recommendation.customization.service.impl; 

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import edu.asu.recommendation.customization.dao.*;
import edu.asu.recommendation.customization.dao.impl.UserDAOImpl;
import edu.asu.recommendation.customization.dto.UserDTO;
import edu.asu.recommendation.customization.service.UserService;
@Service
public class UserServiceImpl implements UserService
{

	@Autowired
	private UserDAOImpl userDAOImplobject;
	
	@Transactional
	public boolean validateUser(String inputUserName, String inputPassword)
	{
		
		String userPassword = userDAOImplobject.retrievePassword(inputUserName);
		//System.out.println("User Input Password = " + inputPassword);
		if(!userPassword.isEmpty())
		{
			if(userPassword.equals(inputPassword))
			{
				return true;
			}
		}
		return false;
	}

	@Transactional
	public UserDTO getUserDTO(String userName)
	{
		return userDAOImplobject.getUserDTO(userName);
	}

}
