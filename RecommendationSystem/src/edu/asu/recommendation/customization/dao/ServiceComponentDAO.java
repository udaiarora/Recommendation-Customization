package edu.asu.recommendation.customization.dao;

import edu.asu.recommendation.customization.dto.ServicesComponentDTO;

public interface ServiceComponentDAO {
	
	
		// Return a DTO Object
		public ServicesComponentDTO getServiceComponet (Integer userId, Integer templateId);
		
		public Boolean updateServiceAttributes(ServicesComponentDTO serviceDTO); // update a whole row using DTO.

	
		
}
