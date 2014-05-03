package edu.asu.recommendation.customization.service;

import edu.asu.recommendation.customization.dto.DatamodelComponentDTO;


public interface DataModelService {

	public DatamodelComponentDTO getDataModelComponent(Integer userId, Integer templateId);
	
	public Boolean updateDataModelAttributes(DatamodelComponentDTO gDTO);
	
	public Boolean saveDataModelAttributes(DatamodelComponentDTO gDTO);
}
