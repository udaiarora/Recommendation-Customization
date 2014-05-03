package edu.asu.recommendation.customization.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import edu.asu.recommendation.customization.dao.impl.GUIComponentDAOImpl;
import edu.asu.recommendation.customization.dto.GuiComponentDTO;
import edu.asu.recommendation.customization.service.GuiComponentService;

@Service
public class GuiComponentServiceImpl implements GuiComponentService{

	@Autowired
	private GUIComponentDAOImpl guiDAO;
	
	@Transactional
	public GuiComponentDTO getGUIComponent(Integer userId, Integer templateId)
	{
		GuiComponentDTO guiDTO = guiDAO.getGUIAttributes(userId, templateId);
		return guiDTO;
	}
	
	@Transactional
	public Boolean updateGUIAttributes(GuiComponentDTO gDTO)
	{
		return guiDAO.updateGUIAttributes(gDTO);
	}
	
	@Transactional
	public Boolean saveGUIAttributes(GuiComponentDTO gDTO)
	{
		return guiDAO.saveGUIAttributes(gDTO);
	}
	
}
