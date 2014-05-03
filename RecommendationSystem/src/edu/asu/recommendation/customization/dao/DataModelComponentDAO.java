package edu.asu.recommendation.customization.dao;

import edu.asu.recommendation.customization.dto.DatamodelComponentDTO;
import edu.asu.recommendation.customization.dto.GuiComponentDTO;

public interface DataModelComponentDAO {
	
	public DatamodelComponentDTO getDataModelAttributes(Integer userId, Integer templateId);
	
	public Boolean updateDataModelAttributes(DatamodelComponentDTO dataDTO);
	
	public Boolean saveDataModelAttributes(DatamodelComponentDTO dataDTO);

}
