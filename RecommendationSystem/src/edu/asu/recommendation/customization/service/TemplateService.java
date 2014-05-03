package edu.asu.recommendation.customization.service;

import java.util.List;

import edu.asu.recommendation.customization.dto.TemplatesDTO;

public interface TemplateService {
	
	public TemplatesDTO getTemplateDTO(Integer userId, Integer templateId);
	
	public List<TemplatesDTO> getTemplateList(Integer userId);
	
	public List<String> getComponentsList(Integer userId, Integer templateId, List<String> componentsList);
}
