package edu.asu.recommendation.customization.model;

public class ServiceComponentModel {

	private String service_name;
	
	private Integer userId;
	
	private Integer templateId;

	private String serviceInputdatatype1;
	
	private String serviceInputdatatype2;
	
	private String serviceInputdatatype3;
	
	private String serviceOutputdatatype;
	
	private String serviceDescription;
	

	
	public Integer getTemplateId() {
		return templateId;
	}

	public void setTemplateId(Integer templateId) {
		this.templateId = templateId;
	}

	public String getServiceName() {
		return service_name;
	}

	public void setServiceName(String service_name) {
		this.service_name = service_name;
	}

	public Integer getUserId() {
		return userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public String getserviceInputdatatype1() {
		return serviceInputdatatype1;
	}

	public void setserviceInputdatatype1(String serviceInputdatatype1) {
		this.serviceInputdatatype1 = serviceInputdatatype1;
	}

	public String getserviceInputdatatype2() {
		return serviceInputdatatype2;
	}
	
	public void setserviceInputdatatype2(String serviceInputdatatype2) {
		this.serviceInputdatatype2 = serviceInputdatatype2;
	}

	public String getserviceInputdatatype3() {
		return serviceInputdatatype3;
	}
	
	public void setserviceInputdatatype3(String serviceInputdatatype3) {
		this.serviceInputdatatype3 = serviceInputdatatype3;
	}

	
	public void setserviceOutputdatatype(String serviceOutputdatatype) {
		this.serviceOutputdatatype = serviceOutputdatatype;
	}

	public String getserviceOutputdatatype() {
		return serviceOutputdatatype;
	}

	
	public void setserviceDescription(String serviceDescription) {
		this.serviceDescription = serviceDescription;
	}

	public String getserviceDescription() {
		return serviceDescription;
	}
	

}
