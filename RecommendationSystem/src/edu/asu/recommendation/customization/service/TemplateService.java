package edu.asu.recommendation.customization.service;

import edu.asu.recommendation.customization.dto.TemplatesDTO;

public interface TemplateService {
	
	public TemplatesDTO getTemplateDTO(Integer userId, Integer templateId);
	

}
