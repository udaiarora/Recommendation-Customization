package edu.asu.recommendation.customization.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import edu.asu.recommendation.customization.dto.GuiComponentDTO;
import edu.asu.recommendation.customization.dto.ServicesComponentDTO;
import edu.asu.recommendation.customization.dto.UserDTO;
import edu.asu.recommendation.customization.model.GUIComponentModel;
import edu.asu.recommendation.customization.model.ServiceComponentModel;
import edu.asu.recommendation.customization.service.*;
import edu.asu.recommendation.customization.service.impl.UserServiceImpl;

	@Controller
	@SessionAttributes
	public class CustomizationController {
		
		@Autowired
		private UserService userService;
		
		@Autowired
		private GuiComponentService guiService;
		
		@Autowired
		private TemplateService templateService;
		
		@Autowired
		private ServiceComponentService serviceComponentService;
			
		@RequestMapping(value="/CustomizeGUI", method=RequestMethod.GET)
		public String customizeGUI(@ModelAttribute("guiModel") GUIComponentModel guiModel, @RequestParam("templateId") String templateId, @RequestParam("guiId") String guiId, BindingResult result, HttpSession sessionID, ModelMap model)
	    {
			Integer userId = (Integer) sessionID.getAttribute("userId");
			//String userName = (String) sessionID.getAttribute("userName");
			System.out.println(userId + " " + templateId + " " + guiId);
			//TemplatesDTO tDTO = templateService.getTemplateDTO(uDTO.getUserId(), templateId);
			GuiComponentDTO gDTO = guiService.getGUIComponent(userId, Integer.parseInt(templateId), Integer.parseInt(guiId));
			
			//System.out.println("GuiAttribute1 " + guiModel.getGuiAttribute1() + " GuiAttrValue1 " + guiModel.getGuiAttrValue1());
			guiModel = copyDtoToModel(gDTO, guiModel);
			guiModel.setUserId(userId);
			guiModel.setTemplateId(Integer.parseInt(templateId));
			model.addAttribute("guiModel", guiModel);
			return gDTO.getUrl();
	    }
		
		@RequestMapping(value="/CustomizeService", method=RequestMethod.GET)
		public String customizeService(@ModelAttribute("serviceModel") ServiceComponentModel serviceModel, @RequestParam("templateId") String templateId, BindingResult result, HttpSession sessionID, ModelMap model)
	    {
			Integer userId = (Integer) sessionID.getAttribute("userId");
			System.out.println("userID" + userId + "templateID: " + templateId);
			ServicesComponentDTO servDTO = serviceComponentService.getServiceAttributes(userId, Integer.parseInt(templateId));
			System.out.println("In Controller : getServiceInputdatatype1 " + servDTO.getServiceInputdatatype1() + " getServiceInputdatatype2 " + servDTO.getServiceInputdatatype1());
			//serviceModel = copyServiceModelToDTO(serviceModel);
			serviceModel = copyServDTOtoModel(servDTO, serviceModel);
			serviceModel.setUserId(userId);
			serviceModel.setTemplateId(Integer.parseInt(templateId));
			model.addAttribute("serviceModel", serviceModel);
			return servDTO.getServiceName();
	    }

	
		@RequestMapping(value="/updateGUI", method=RequestMethod.POST)
		public String updateGUI(@ModelAttribute("guiModel") GUIComponentModel guiModel, BindingResult result, ModelMap model)
		{
			//System.out.println(guiModel.getUserId());
			System.out.println(guiModel.getGuiAttrValue1());
			System.out.println(guiModel.getUserId() + " " + guiModel.getTemplateId() + " " + guiModel.getGuiId());
			GuiComponentDTO guiDTO = guiService.getGUIComponent(guiModel.getUserId(), guiModel.getTemplateId(), guiModel.getGuiId());
			guiDTO.setGuiAttrValue1(guiModel.getGuiAttrValue1());
			guiDTO.setGuiAttrValue2(guiModel.getGuiAttrValue2());
			boolean status = guiService.updateGUIAttributes(guiDTO);
			if(status == true)
			{
				System.out.println("True");
			}
			return guiDTO.getUrl();
		}
		
		
		@RequestMapping(value="/updateService", method=RequestMethod.POST)
		public String updateService(@ModelAttribute("serviceModel") ServiceComponentModel serviceModel, BindingResult result, ModelMap model)
		{
			
			System.out.println(serviceModel.getserviceInputdatatype1());
			System.out.println(serviceModel.getUserId() + " " + serviceModel.getTemplateId());
			ServicesComponentDTO servDTO = serviceComponentService.getServiceAttributes(serviceModel.getUserId(), serviceModel.getTemplateId());
			
			servDTO.setServiceInputdatatype1(serviceModel.getserviceInputdatatype1());
			servDTO.setServiceInputdatatype2(serviceModel.getserviceInputdatatype2());
			servDTO.setServiceInputdatatype3(serviceModel.getserviceInputdatatype3());
			servDTO.setServiceOutputdatatype(serviceModel.getserviceOutputdatatype());
			servDTO.setServiceName(serviceModel.getServiceName());
			servDTO.setServiceDescription(serviceModel.getserviceDescription());
			boolean status = serviceComponentService.updateServiceAttributes(servDTO);
			if(status == true)
			{
				System.out.println("True");
			}
			return servDTO.getServiceName();
		}
		
		public GUIComponentModel copyDtoToModel(GuiComponentDTO gDTO, GUIComponentModel guiModel)
		{
			
			guiModel.setGuiId(gDTO.getGuiId());
			guiModel.setGuiName(gDTO.getGuiName());
			guiModel.setGuiAttribute1(gDTO.getGuiAttribute1());
			guiModel.setGuiAttribute2(gDTO.getGuiAttribute2());
			guiModel.setGuiAttribute3(gDTO.getGuiAttribute3());
			guiModel.setGuiAttrValue1(gDTO.getGuiAttrValue1());
			guiModel.setGuiAttrValue2(gDTO.getGuiAttrValue2());
			guiModel.setGuiAttrValue3(gDTO.getGuiAttrValue3());
			guiModel.setUrl(gDTO.getUrl());
			return guiModel;
		}
		
		// DTO to form.
		public ServiceComponentModel copyServDTOtoModel(ServicesComponentDTO servDTO, ServiceComponentModel servModel)
		{
			
			servModel.setserviceInputdatatype1(servDTO.getServiceInputdatatype1());
			servModel.setserviceInputdatatype2(servDTO.getServiceInputdatatype2());
			servModel.setserviceInputdatatype3(servDTO.getServiceInputdatatype3());
			servModel.setserviceOutputdatatype(servDTO.getServiceOutputdatatype());
			servModel.setServiceName(servDTO.getServiceName());
			
			return servModel;
		}
		
		
		public GuiComponentDTO copyModelToDTO(GUIComponentModel guiModel)
		{
			GuiComponentDTO guiDTO = new GuiComponentDTO();
			guiDTO.setGuiId(guiModel.getGuiId());
			guiDTO.setGuiName(guiModel.getGuiName());
			guiDTO.setGuiAttribute1(guiModel.getGuiAttribute1());
			guiDTO.setGuiAttribute2(guiModel.getGuiAttribute2());
			guiDTO.setGuiAttribute3(guiModel.getGuiAttribute3());
			guiDTO.setGuiAttrValue1(guiModel.getGuiAttrValue1());
			guiDTO.setGuiAttrValue2(guiModel.getGuiAttrValue2());
			guiDTO.setGuiAttrValue3(guiModel.getGuiAttrValue3());
			guiDTO.setUrl(guiModel.getUrl());
			System.out.println(guiDTO.getGuiAttribute1());
			System.out.println(guiDTO.getGuiAttribute2());
			System.out.println(guiDTO.getGuiId());
			System.out.println(guiDTO.getUrl());
			return guiDTO;
			
		}
		
		

		public ServicesComponentDTO copyServiceModelToDTO(ServiceComponentModel servModel)
		{
			ServicesComponentDTO servDTO = new ServicesComponentDTO();
			servDTO.setServiceInputdatatype1(servModel.getserviceInputdatatype1());
			servDTO.setServiceInputdatatype2(servModel.getserviceInputdatatype2());
			servDTO.setServiceInputdatatype3(servModel.getserviceInputdatatype3());
			servDTO.setServiceName(servModel.getServiceName());
			servDTO.setServiceOutputdatatype(servModel.getserviceOutputdatatype());
			System.out.println(servDTO.getServiceInputdatatype1());
			System.out.println(servDTO.getServiceInputdatatype2());
			System.out.println(servDTO.getServiceInputdatatype3());
			System.out.println(servDTO.getServiceOutputdatatype());
			System.out.println(servDTO.getServiceName());
			return servDTO;
			
		}
}
	 
	 
	
