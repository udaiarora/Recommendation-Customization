package edu.asu.recommendation.customization.service;

import edu.asu.recommendation.customization.dto.UserDTO;

public interface UserService {

	public boolean validateUser(String userName, String password);
	
	public UserDTO getUserDTO(String userName);

}
