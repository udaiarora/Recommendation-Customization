package edu.asu.recommendation.customization.service.impl; 

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.asu.recommendation.customization.dao.*;
import edu.asu.recommendation.customization.dao.impl.ServiceComponentDAOImpl;
import edu.asu.recommendation.customization.dao.impl.UserDAOImpl;
import edu.asu.recommendation.customization.service.CustomizationService;

@Service
public class ServiceComponentImpl implements CustomizationService{

	@Autowired
	private ServiceComponentDAOImpl ServiceComponentDAOImplObject;
	
	public boolean editServiceParam(String inputParam1, String inputParam2)
	{
		
		/*//String userPassword = ServiceComponentDAOImplObject.retrievePassword(inputUserName);
		//System.out.println("User Input Password = " + inputPassword);
		if(!userPassword.isEmpty())
		{
			if(userPassword.equals(inputPassword))
			{
				return true;
			}
		}*/
		return false;
	}

	@Override
	public boolean editServiceTemplates (Integer[] templates) {
		// TODO Auto-generated method stub
		return false;
	}
	
	public boolean editParameters(String userName, String passWord) {
		// TODO Auto-generated method stub
		return false;
	}

}
