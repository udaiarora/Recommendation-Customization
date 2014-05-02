package edu.asu.recommendation.customization.service;

import edu.asu.recommendation.customization.dto.ServicesComponentDTO;


public interface ServiceComponentService {

// almost same as DAO
public ServicesComponentDTO getServiceAttributes (Integer userId, Integer templateId);

public Boolean updateServiceAttributes(ServicesComponentDTO serviceDTO); // update a whole row using DTO.
}