package edu.asu.recommendation.customization.controller;

import java.util.List;

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
import edu.asu.recommendation.customization.dto.TemplatesDTO;
import edu.asu.recommendation.customization.dto.UserDTO;
import edu.asu.recommendation.customization.model.GUIComponentModel;
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
		
		@RequestMapping(value="/CustomizeGUI", method=RequestMethod.GET)
		public String customizeGUI(@ModelAttribute("guiModel") GUIComponentModel guiModel, @RequestParam("templateId") String templateId, @RequestParam("guiId") String guiId, BindingResult result, HttpSession sessionID, ModelMap model)
	    {
			Integer userId = (Integer) sessionID.getAttribute("userId");
			//String userName = (String) sessionID.getAttribute("userName");
			System.out.println(userId + " " + templateId + " " + guiId);
			//TemplatesDTO tDTO = templateService.getTemplateDTO(uDTO.getUserId(), templateId);
			GuiComponentDTO gDTO = guiService.getGUIComponent(userId, Integer.parseInt(templateId));
			
			//System.out.println("GuiAttribute1 " + guiModel.getGuiAttribute1() + " GuiAttrValue1 " + guiModel.getGuiAttrValue1());
			guiModel = copyDtoToModel(gDTO, guiModel);
			guiModel.setUserId(userId);
			guiModel.setTemplateId(Integer.parseInt(templateId));
			model.addAttribute("guiModel", guiModel);
			//return gDTO.getUrl();
			return "/templates/gui/BookSearch";
	    }
	
		@RequestMapping(value="/updateGUI", method=RequestMethod.POST)
		public String updateGUI(@ModelAttribute("guiModel") GUIComponentModel guiModel, BindingResult result, HttpSession sessionID, ModelMap model)
		{
			//System.out.println(guiModel.getUserId());
			System.out.println(guiModel.getGuiAttrValue1());
			System.out.println(guiModel.getUserId() + " " + guiModel.getTemplateId() + " " + guiModel.getGuiId());
			GuiComponentDTO guiDTO = guiService.getGUIComponent(guiModel.getUserId(), guiModel.getTemplateId());
			guiDTO.setGuiAttrValue1(guiModel.getGuiAttrValue1());
			guiDTO.setGuiAttrValue2(guiModel.getGuiAttrValue2());
			if(guiDTO.getUserID().getUserId() == -1)
			{
				GuiComponentDTO gDTO = new GuiComponentDTO();
				UserDTO uDTO = userService.getUserDTO((String)sessionID.getAttribute("userName"));
				gDTO.setUserID(uDTO);
				gDTO.setGuiAttribute1(guiDTO.getGuiAttribute1());
				gDTO.setGuiAttribute2(guiDTO.getGuiAttribute2());
				gDTO.setGuiAttribute3(guiDTO.getGuiAttribute3());
				gDTO.setGuiAttrValue1(guiDTO.getGuiAttrValue1());
				gDTO.setGuiAttrValue2(guiDTO.getGuiAttrValue2());
				gDTO.setGuiAttrValue3(guiDTO.getGuiAttrValue3());
				gDTO.setGuiName(guiDTO.getGuiName());
				gDTO.setTemplateID(guiDTO.getTemplateID());
				gDTO.setUrl(guiDTO.getUrl());
				boolean status = guiService.saveGUIAttributes(gDTO);
			}
			else
			{
			
				boolean status = guiService.updateGUIAttributes(guiDTO);
				if(status == true)
				{
					System.out.println("True");
				}
			}
			return guiDTO.getUrl();
		}
		
		@RequestMapping(value="/showTemplates", method=RequestMethod.POST)
		public String showTemplates(ModelMap model, HttpSession sessionID)
		{
			Integer userId = (Integer) sessionID.getAttribute("userId");
			List<TemplatesDTO> templatesList = templateService.getTemplateList(userId);
			for(TemplatesDTO t : templatesList)
			{
				System.out.println(t.getTemplateName());
			}
			return "/templates";
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
}
	 
	 
	
