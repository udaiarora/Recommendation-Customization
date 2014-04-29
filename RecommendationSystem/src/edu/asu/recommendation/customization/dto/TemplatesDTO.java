/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package edu.asu.recommendation.customization.dto;

import java.io.Serializable;
import java.util.List;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 *
 * @author Ramki
 */
@Entity
@Table(name = "templates_table")
@NamedQueries({
    @NamedQuery(name = "TemplatesDTO.findAll", query = "SELECT t FROM TemplatesDTO t"),
    @NamedQuery(name = "TemplatesDTO.findByTemplateId", query = "SELECT t FROM TemplatesDTO t WHERE t.templateId = :templateId"),
    @NamedQuery(name = "TemplatesDTO.findByTemplateName", query = "SELECT t FROM TemplatesDTO t WHERE t.templateName = :templateName"),
    @NamedQuery(name = "TemplatesDTO.findByTemplateDescription", query = "SELECT t FROM TemplatesDTO t WHERE t.templateDescription = :templateDescription"),
    @NamedQuery(name = "TemplatesDTO.findByUsedCount", query = "SELECT t FROM TemplatesDTO t WHERE t.usedCount = :usedCount")})
public class TemplatesDTO implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @Column(name = "template_id")
    private Integer templateId;
    @Column(name = "template_name")
    private String templateName;
    @Column(name = "template_description")
    private String templateDescription;
    @Column(name = "used_count")
    private Integer usedCount;
    @OneToMany(mappedBy = "templateID")
    private List<WorkflowComponentDTO> workflowComponentDTOList;
    @JoinColumn(name = "user_id", referencedColumnName = "user_id")
    @ManyToOne
    private UserDTO userID;
    @OneToMany(mappedBy = "templateID")
    private List<DatamodelComponentDTO> datamodelComponentDTOList;
    @OneToMany(mappedBy = "templateID")
    private List<ServicesComponentDTO> servicesComponentDTOList;
    @OneToMany(mappedBy = "templateID")
    private List<GuiComponentDTO> guiComponentDTOList;

    public TemplatesDTO() {
    }

    public TemplatesDTO(Integer templateId) {
        this.templateId = templateId;
    }

    public Integer getTemplateId() {
        return templateId;
    }

    public void setTemplateId(Integer templateId) {
        this.templateId = templateId;
    }

    public String getTemplateName() {
        return templateName;
    }

    public void setTemplateName(String templateName) {
        this.templateName = templateName;
    }

    public String getTemplateDescription() {
        return templateDescription;
    }

    public void setTemplateDescription(String templateDescription) {
        this.templateDescription = templateDescription;
    }

    public Integer getUsedCount() {
        return usedCount;
    }

    public void setUsedCount(Integer usedCount) {
        this.usedCount = usedCount;
    }

    public List<WorkflowComponentDTO> getWorkflowComponentDTOList() {
        return workflowComponentDTOList;
    }

    public void setWorkflowComponentDTOList(List<WorkflowComponentDTO> workflowComponentDTOList) {
        this.workflowComponentDTOList = workflowComponentDTOList;
    }

    public UserDTO getUserID() {
        return userID;
    }

    public void setUserID(UserDTO userID) {
        this.userID = userID;
    }

    public List<DatamodelComponentDTO> getDatamodelComponentDTOList() {
        return datamodelComponentDTOList;
    }

    public void setDatamodelComponentDTOList(List<DatamodelComponentDTO> datamodelComponentDTOList) {
        this.datamodelComponentDTOList = datamodelComponentDTOList;
    }

    public List<ServicesComponentDTO> getServicesComponentDTOList() {
        return servicesComponentDTOList;
    }

    public void setServicesComponentDTOList(List<ServicesComponentDTO> servicesComponentDTOList) {
        this.servicesComponentDTOList = servicesComponentDTOList;
    }

    public List<GuiComponentDTO> getGuiComponentDTOList() {
        return guiComponentDTOList;
    }

    public void setGuiComponentDTOList(List<GuiComponentDTO> guiComponentDTOList) {
        this.guiComponentDTOList = guiComponentDTOList;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (templateId != null ? templateId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof TemplatesDTO)) {
            return false;
        }
        TemplatesDTO other = (TemplatesDTO) object;
        if ((this.templateId == null && other.templateId != null) || (this.templateId != null && !this.templateId.equals(other.templateId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "edu.asu.recommendation.customization.dto.TemplatesDTO[templateId=" + templateId + "]";
    }

}
