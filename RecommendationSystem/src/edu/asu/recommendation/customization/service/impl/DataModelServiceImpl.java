package edu.asu.recommendation.customization.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import edu.asu.recommendation.customization.dao.impl.DataModelComponentDAOImpl;
import edu.asu.recommendation.customization.dto.DatamodelComponentDTO;
import edu.asu.recommendation.customization.dto.GuiComponentDTO;
import edu.asu.recommendation.customization.service.DataModelService;

@Service
public class DataModelServiceImpl implements DataModelService {

	@Autowired
	private DataModelComponentDAOImpl dataDAO;
	
	@Override
	@Transactional
	public DatamodelComponentDTO getDataModelComponent(Integer userId,
			Integer templateId) {
		// TODO Auto-generated method stub
		DatamodelComponentDTO dataDTO = dataDAO.getDataModelAttributes(userId, templateId);
		return dataDTO;
	}

	@Override
	@Transactional
	public Boolean updateDataModelAttributes(DatamodelComponentDTO dDTO) {
		// TODO Auto-generated method stub
		return dataDAO.updateDataModelAttributes(dDTO);
	}

	@Override
	@Transactional
	public Boolean saveDataModelAttributes(DatamodelComponentDTO dDTO) {
		// TODO Auto-generated method stub
		return dataDAO.saveDataModelAttributes(dDTO);
	}

	
}
