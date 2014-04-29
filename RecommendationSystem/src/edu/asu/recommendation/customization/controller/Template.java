package edu.asu.recommendation.customization.controller;

public class Template 
{
	//private int TemplateID;
	private String[] TemplateName;
	
	//public Template(int ID, String[] Name)
	public Template(String[] Name)
	{
		//TemplateID=ID;
		TemplateName=Name;
	}
	public int getTemplateID() 
	{
		//return TemplateID;
		return 0;
	}
	public void setTemplateID(int templateID)
	{
		//TemplateID = templateID;
	}
	public String[] getTemplateName()
	{
		return TemplateName;
	}
	public void setTemplateName(String[] templateName)
	{
		TemplateName = templateName;
	}
	
}
