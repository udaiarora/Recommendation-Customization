package edu.asu.recommendation.customization.service;

import edu.asu.recommendation.customization.dto.GuiComponentDTO;
import edu.asu.recommendation.customization.dto.TemplatesDTO;

public interface GuiComponentService {

	public GuiComponentDTO getGUIComponent(Integer userId, Integer templateId);
	
	public Boolean updateGUIAttributes(GuiComponentDTO gDTO);
	
	public Boolean saveGUIAttributes(GuiComponentDTO gDTO);
}
