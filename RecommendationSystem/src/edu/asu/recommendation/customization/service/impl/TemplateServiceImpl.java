package edu.asu.recommendation.customization.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import edu.asu.recommendation.customization.dao.impl.TemplateDAOImpl;
import edu.asu.recommendation.customization.dto.TemplatesDTO;
import edu.asu.recommendation.customization.service.TemplateService;

@Service
public class TemplateServiceImpl implements TemplateService {
	
	@Autowired
	private TemplateDAOImpl templateDAOImpl;
	
	@Transactional
	public TemplatesDTO getTemplateDTO(Integer userId, Integer templateId)
	{
		return templateDAOImpl.getTemplateDTO(userId, templateId);
	}
	
	@Transactional
	public List<TemplatesDTO> getTemplateList(Integer userId)
	{
		return templateDAOImpl.getTemplatesList(userId);
	}
	
	@Transactional
	public List<String> getComponentsList(Integer userId, Integer templateId, List<String> componentsList)
	{
		return templateDAOImpl.getComponentsList(userId, templateId, componentsList);
	}

}
