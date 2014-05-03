package edu.asu.recommendation.customization.dao;

import java.util.List;

import edu.asu.recommendation.customization.dto.TemplatesDTO;

public interface TemplateDAO {
	
	public TemplatesDTO getTemplateDTO(Integer userId, Integer templateId);
	
	public List<TemplatesDTO> getTemplatesList(Integer userId);
	
	public List<String> getComponentsList(Integer userId, Integer templateId, List<String> componentsList);

}
