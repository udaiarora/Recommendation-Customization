package edu.asu.recommendation.customization.service;

import edu.asu.recommendation.customization.dto.GuiComponentDTO;
import edu.asu.recommendation.customization.dto.TemplatesDTO;

public interface GuiComponentService {

	public GuiComponentDTO getGUIComponent(Integer userId, Integer templateId, Integer guiId);
	
	public Boolean updateGUIAttributes(GuiComponentDTO gDTO);
}
