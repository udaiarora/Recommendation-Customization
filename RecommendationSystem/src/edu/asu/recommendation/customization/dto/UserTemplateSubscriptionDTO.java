/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package edu.asu.recommendation.customization.dto;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
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
@Table(name = "user_template_subscription_table")
@NamedQueries({
    @NamedQuery(name = "UserTemplateSubscriptionTableDTO.findAll", query = "SELECT u FROM UserTemplateSubscriptionDTO u"),
    @NamedQuery(name = "UserTemplateSubscriptionTableDTO.findByUserTemplateSubscriptionId", query = "SELECT u FROM UserTemplateSubscriptionDTO u WHERE u.userTemplateSubscriptionId = :userTemplateSubscriptionId")})
public class UserTemplateSubscriptionDTO implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "User_Template_Subscription_Id")
    private Integer userTemplateSubscriptionId;
    @JoinColumn(name = "Template_Id", referencedColumnName = "Template_Id")
    @ManyToOne(optional = false)
    private TemplatesDTO templateID;
    @JoinColumn(name = "User_Id", referencedColumnName = "User_Id")
    @ManyToOne(optional = false)
    private UserDTO userID;

    public UserTemplateSubscriptionDTO() {
    }

    public UserTemplateSubscriptionDTO(Integer userTemplateSubscriptionId) {
        this.userTemplateSubscriptionId = userTemplateSubscriptionId;
    }

    public Integer getUserTemplateSubscriptionId() {
        return userTemplateSubscriptionId;
    }

    public void setUserTemplateSubscriptionId(Integer userTemplateSubscriptionId) {
        this.userTemplateSubscriptionId = userTemplateSubscriptionId;
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
        hash += (userTemplateSubscriptionId != null ? userTemplateSubscriptionId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof UserTemplateSubscriptionDTO)) {
            return false;
        }
        UserTemplateSubscriptionDTO other = (UserTemplateSubscriptionDTO) object;
        if ((this.userTemplateSubscriptionId == null && other.userTemplateSubscriptionId != null) || (this.userTemplateSubscriptionId != null && !this.userTemplateSubscriptionId.equals(other.userTemplateSubscriptionId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "edu.asu.recommendation.customization.dto.UserTemplateSubscriptionDTO[userTemplateSubscriptionId=" + userTemplateSubscriptionId + "]";
    }

}
