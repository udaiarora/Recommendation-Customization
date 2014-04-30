package edu.asu.recommendation.customization.dao;


import edu.asu.recommendation.customization.dto.GuiComponentDTO;

public interface GUIComponentDAO {
	
	public GuiComponentDTO getGUIAttributes(Integer userId, Integer templateId, Integer guiId);
	
	public Boolean updateGUIAttributes(GuiComponentDTO guiDTO);

}
