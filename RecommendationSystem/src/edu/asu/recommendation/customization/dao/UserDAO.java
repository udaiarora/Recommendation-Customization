package edu.asu.recommendation.customization.dao;

import edu.asu.recommendation.customization.dto.UserDTO;

public interface UserDAO {

	public String retrievePassword(String userID);
	
	public UserDTO getUserDTO(String userName);


}
