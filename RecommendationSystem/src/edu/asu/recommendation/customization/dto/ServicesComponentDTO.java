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
    @NamedQuery(name = "ServicesComponentDTO.findByServiceInputdatatype1", query = "SELECT s FROM ServicesComponentDTO s WHERE s.serviceInputdatatype1 = :serviceInputdatatype1"),
    @NamedQuery(name = "ServicesComponentDTO.findByServiceInputdatatype2", query = "SELECT s FROM ServicesComponentDTO s WHERE s.serviceInputdatatype2 = :serviceInputdatatype2"),
    @NamedQuery(name = "ServicesComponentDTO.findByServiceInputdatatype3", query = "SELECT s FROM ServicesComponentDTO s WHERE s.serviceInputdatatype3 = :serviceInputdatatype3"),
    @NamedQuery(name = "ServicesComponentDTO.findByServiceOutputdatatype", query = "SELECT s FROM ServicesComponentDTO s WHERE s.serviceOutputdatatype = :serviceOutputdatatype"),
    @NamedQuery(name = "ServicesComponentDTO.findByServiceDescription", query = "SELECT s FROM ServicesComponentDTO s WHERE s.serviceDescription = :serviceDescription"),
    @NamedQuery(name = "ServicesComponentDTO.findByCustomizationType", query = "SELECT s FROM ServicesComponentDTO s WHERE s.customizationType = :customizationType")})
public class ServicesComponentDTO implements Serializable {
    private static final long serialVersionUID = 1L;
    @EmbeddedId
    protected ServicesComponentDTOPK servicesComponentDTOPK;
    @Column(name = "service_name")
    private String serviceName;
    @Column(name = "service_inputdatatype1")
    private String serviceInputdatatype1;
    @Column(name = "service_inputdatatype2")
    private String serviceInputdatatype2;
    @Column(name = "service_inputdatatype3")
    private String serviceInputdatatype3;
    @Column(name = "service_outputdatatype")
    private String serviceOutputdatatype;
    @Column(name = "service_description")
    private String serviceDescription;
    @Column(name = "customization_type")
    private String customizationType;
    @JoinColumn(name = "template_id", referencedColumnName = "template_id")
    @ManyToOne
    private TemplatesDTO templateID;
    @JoinColumn(name = "user_id", referencedColumnName = "user_id")
    @ManyToOne
    private UserDTO userID;

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

    public String getServiceName() {
        return serviceName;
    }

    public void setServiceName(String serviceName) {
        this.serviceName = serviceName;
    }

    public String getServiceInputdatatype1() {
        return serviceInputdatatype1;
    }
    
    public String getServiceInputdatatype2() {
        return serviceInputdatatype2;
    }

    public String getServiceInputdatatype3() {
        return serviceInputdatatype3;
    }


    public void setServiceInputdatatype1(String serviceInputdatatype1) {
        this.serviceInputdatatype1 = serviceInputdatatype1;
    }

    public void setServiceInputdatatype2(String serviceInputdatatype2) {
        this.serviceInputdatatype2 = serviceInputdatatype2;
    }

    public void setServiceInputdatatype3(String serviceInputdatatype3) {
        this.serviceInputdatatype3 = serviceInputdatatype3;
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

    public TemplatesDTO getTemplateID() {
        return templateID;
    }

    public void setTemplateID(TemplatesDTO templateID) {
        this.templateID = templateID;
    }

    public UserDTO getUserID() {
        return userID;
    }

    public void setUserID(UserDTO userID) {
        this.userID = userID;
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
