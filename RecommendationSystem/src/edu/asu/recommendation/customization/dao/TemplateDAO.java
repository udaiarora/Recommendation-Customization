package edu.asu.recommendation.customization.dao;

import edu.asu.recommendation.customization.dto.TemplatesDTO;

public interface TemplateDAO {
	
	public TemplatesDTO getTemplateDTO(Integer userId, Integer templateId);

}
