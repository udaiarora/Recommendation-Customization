package edu.asu.recommendation.customization.dao;

public interface ServiceComponentDAO {
	
	// List of Services associated with the user ID.
	public String retrieveServiceList(String userID); 
	
	// Persist the ChangedService in the DB
	public String updateChangedParamService(String serviceID,String changedParam1ID,String changedParam2ID);

	// Change the Name of the service
	public String updateChangedNameService(String serviceID,String oldComponent1ID,String changedComponentID);
	
	// Change the return type of the service
	public String updateChangedReturnTypeService(String serviceID,String oldComponentID,String changedComponentID);
		
}
