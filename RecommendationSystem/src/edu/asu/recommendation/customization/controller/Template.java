package edu.asu.recommendation.customization.controller;

public class Template 
{
	private String[] TemplateName;
	
	public Template(String[] Name)
	{
		TemplateName=Name;
	}
	public int getTemplateID() 
	{
	
		return 0;
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
