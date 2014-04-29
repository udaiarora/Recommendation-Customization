/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package edu.asu.recommendation.customization.dto;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

/**
 *
 * @author Ramki
 */
@Entity
@Table(name = "services_table")
@NamedQueries({
    @NamedQuery(name = "ServicesComponentDTO.findAll", query = "SELECT s FROM ServicesComponentDTO s"),
    @NamedQuery(name = "ServicesComponentDTO.findByTemplatecomponentrelationshipId", query = "SELECT s FROM ServicesComponentDTO s WHERE s.servicesComponentDTOPK.templatecomponentrelationshipId = :templatecomponentrelationshipId"),
    @NamedQuery(name = "ServicesComponentDTO.findByServiceId", query = "SELECT s FROM ServicesComponentDTO s WHERE s.servicesComponentDTOPK.serviceId = :serviceId"),
    @NamedQuery(name = "ServicesComponentDTO.findByServiceName", query = "SELECT s FROM ServicesComponentDTO s WHERE s.serviceName = :serviceName"),
    @NamedQuery(name = "ServicesComponentDTO.findByServiceInputdatatype", query = "SELECT s FROM ServicesComponentDTO s WHERE s.serviceInputdatatype = :serviceInputdatatype"),
    @NamedQuery(name = "ServicesComponentDTO.findByServiceOutputdatatype", query = "SELECT s FROM ServicesComponentDTO s WHERE s.serviceOutputdatatype = :serviceOutputdatatype"),
    @NamedQuery(name = "ServicesComponentDTO.findByServiceDescription", query = "SELECT s FROM ServicesComponentDTO s WHERE s.serviceDescription = :serviceDescription"),
    @NamedQuery(name = "ServicesComponentDTO.findByCustomizationType", query = "SELECT s FROM ServicesComponentDTO s WHERE s.customizationType = :customizationType")})
public class ServicesComponentDTO implements Serializable {
    private static final long serialVersionUID = 1L;
    @EmbeddedId
    protected ServicesComponentDTOPK servicesComponentDTOPK;
    @Column(name = "service_name")
    private Integer serviceName;
    @Column(name = "service_inputdatatype")
    private String serviceInputdatatype;
    @Column(name = "service_outputdatatype")
    private String serviceOutputdatatype;
    @Column(name = "service_description")
    private String serviceDescription;
    @Column(name = "customization_type")
    private String customizationType;
    @JoinColumn(name = "template_id", referencedColumnName = "template_id")
    @ManyToOne
    private TemplatesDTO templateId;
    @JoinColumn(name = "user_id", referencedColumnName = "user_id")
    @ManyToOne
    private UserDTO userId;

    public ServicesComponentDTO() {
    }

    public ServicesComponentDTO(ServicesComponentDTOPK servicesComponentDTOPK) {
        this.servicesComponentDTOPK = servicesComponentDTOPK;
    }

    public ServicesComponentDTO(int templatecomponentrelationshipId, int serviceId) {
        this.servicesComponentDTOPK = new ServicesComponentDTOPK(templatecomponentrelationshipId, serviceId);
    }

    public ServicesComponentDTOPK getServicesComponentDTOPK() {
        return servicesComponentDTOPK;
    }

    public void setServicesComponentDTOPK(ServicesComponentDTOPK servicesComponentDTOPK) {
        this.servicesComponentDTOPK = servicesComponentDTOPK;
    }

    public Integer getServiceName() {
        return serviceName;
    }

    public void setServiceName(Integer serviceName) {
        this.serviceName = serviceName;
    }

    public String getServiceInputdatatype() {
        return serviceInputdatatype;
    }

    public void setServiceInputdatatype(String serviceInputdatatype) {
        this.serviceInputdatatype = serviceInputdatatype;
    }

    public String getServiceOutputdatatype() {
        return serviceOutputdatatype;
    }

    public void setServiceOutputdatatype(String serviceOutputdatatype) {
        this.serviceOutputdatatype = serviceOutputdatatype;
    }

    public String getServiceDescription() {
        return serviceDescription;
    }

    public void setServiceDescription(String serviceDescription) {
        this.serviceDescription = serviceDescription;
    }

    public String getCustomizationType() {
        return customizationType;
    }

    public void setCustomizationType(String customizationType) {
        this.customizationType = customizationType;
    }

    public TemplatesDTO getTemplateId() {
        return templateId;
    }

    public void setTemplateId(TemplatesDTO templateId) {
        this.templateId = templateId;
    }

    public UserDTO getUserId() {
        return userId;
    }

    public void setUserId(UserDTO userId) {
        this.userId = userId;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (servicesComponentDTOPK != null ? servicesComponentDTOPK.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof ServicesComponentDTO)) {
            return false;
        }
        ServicesComponentDTO other = (ServicesComponentDTO) object;
        if ((this.servicesComponentDTOPK == null && other.servicesComponentDTOPK != null) || (this.servicesComponentDTOPK != null && !this.servicesComponentDTOPK.equals(other.servicesComponentDTOPK))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "edu.asu.recommendation.customization.dto.ServicesComponentDTO[servicesComponentDTOPK=" + servicesComponentDTOPK + "]";
    }

}
