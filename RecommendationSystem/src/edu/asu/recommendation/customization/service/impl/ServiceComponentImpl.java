package edu.asu.recommendation.customization.service.impl; 

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import edu.asu.recommendation.customization.dao.impl.ServiceComponentDAOImpl;
import edu.asu.recommendation.customization.dto.ServicesComponentDTO;
import edu.asu.recommendation.customization.service.ServiceComponentService;

@Service
public class ServiceComponentImpl implements ServiceComponentService{

	@Autowired
	private ServiceComponentDAOImpl serviceDAOImpl;
	
	@Transactional
	public ServicesComponentDTO getServiceAttributes(Integer userId,
			Integer templateId) {
			
		ServicesComponentDTO serviceDTO  = serviceDAOImpl.getServiceComponet(userId, templateId);
		return serviceDTO;
	}

	@Transactional
	public Boolean updateServiceAttributes(ServicesComponentDTO serviceDTO) {
		// TODO Auto-generated method stub
		return serviceDAOImpl.updateServiceAttributes(serviceDTO);
	}
	
}