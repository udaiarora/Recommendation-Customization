/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package edu.asu.recommendation.customization.dto;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Embeddable;

/**
 *
 * @author Ramki
 */
@Embeddable
public class ServicesComponentDTOPK implements Serializable {
    @Basic(optional = false)
    @Column(name = "template_component_relationship_Id")
    private int templatecomponentrelationshipId;
    @Basic(optional = false)
    @Column(name = "service_id")
    private int serviceId;

    public ServicesComponentDTOPK() {
    }

    public ServicesComponentDTOPK(int templatecomponentrelationshipId, int serviceId) {
        this.templatecomponentrelationshipId = templatecomponentrelationshipId;
        this.serviceId = serviceId;
    }

    public int getTemplatecomponentrelationshipId() {
        return templatecomponentrelationshipId;
    }

    public void setTemplatecomponentrelationshipId(int templatecomponentrelationshipId) {
        this.templatecomponentrelationshipId = templatecomponentrelationshipId;
    }

    public int getServiceId() {
        return serviceId;
    }

    public void setServiceId(int serviceId) {
        this.serviceId = serviceId;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (int) templatecomponentrelationshipId;
        hash += (int) serviceId;
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof ServicesComponentDTOPK)) {
            return false;
        }
        ServicesComponentDTOPK other = (ServicesComponentDTOPK) object;
        if (this.templatecomponentrelationshipId != other.templatecomponentrelationshipId) {
            return false;
        }
        if (this.serviceId != other.serviceId) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "edu.asu.recommendation.customization.dto.ServicesComponentDTOPK[templatecomponentrelationshipId=" + templatecomponentrelationshipId + ", serviceId=" + serviceId + "]";
    }

}
