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
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 *
 * @author Ramki
 */
@Entity
@Table(name = "user_table")
@NamedQueries({
    @NamedQuery(name = "UserDTO.findAll", query = "SELECT u FROM UserDTO u"),
    @NamedQuery(name = "UserDTO.findByUserId", query = "SELECT u FROM UserDTO u WHERE u.userId = :userId"),
    @NamedQuery(name = "UserDTO.findByOrgName", query = "SELECT u FROM UserDTO u WHERE u.orgName = :orgName"),
    @NamedQuery(name = "UserDTO.findByUserEmail", query = "SELECT u FROM UserDTO u WHERE u.userEmail = :userEmail"),
    @NamedQuery(name = "UserDTO.findByUserName", query = "SELECT u FROM UserDTO u WHERE u.userName = :userName"),
    @NamedQuery(name = "UserDTO.findByPassword", query = "SELECT u FROM UserDTO u WHERE u.password = :password"),
    @NamedQuery(name = "UserDTO.findByOrgLogo", query = "SELECT u FROM UserDTO u WHERE u.orgLogo = :orgLogo"),
    @NamedQuery(name = "UserDTO.findBySubscriptionStartDate", query = "SELECT u FROM UserDTO u WHERE u.subscriptionStartDate = :subscriptionStartDate"),
    @NamedQuery(name = "UserDTO.findBySubscriptionEndDate", query = "SELECT u FROM UserDTO u WHERE u.subscriptionEndDate = :subscriptionEndDate")})
public class UserDTO implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @Column(name = "user_id")
    private Integer userId;
    @Column(name = "org_name")
    private String orgName;
    @Column(name = "user_email")
    private String userEmail;
    @Column(name = "user_name")
    private String userName;
    @Column(name = "password")
    private String password;
    @Column(name = "org_logo")
    private String orgLogo;
    @Column(name = "subscription_start_date")
    private String subscriptionStartDate;
    @Column(name = "subscription_end_date")
    private String subscriptionEndDate;
    @OneToMany(mappedBy = "userID")
    private List<WorkflowComponentDTO> workflowComponentDTOList;
    @OneToMany(mappedBy = "userID")
    private List<TemplatesDTO> templatesDTOList;
    @OneToMany(mappedBy = "userID")
    private List<DatamodelComponentDTO> datamodelComponentDTOList;
    @OneToMany(mappedBy = "userID")
    private List<ServicesComponentDTO> servicesComponentDTOList;
    @OneToMany(mappedBy = "userID")
    private List<GuiComponentDTO> guiComponentDTOList;

    public UserDTO() {
    }

    public UserDTO(Integer userId) {
        this.userId = userId;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getOrgName() {
        return orgName;
    }

    public void setOrgName(String orgName) {
        this.orgName = orgName;
    }

    public String getUserEmail() {
        return userEmail;
    }

    public void setUserEmail(String userEmail) {
        this.userEmail = userEmail;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getOrgLogo() {
        return orgLogo;
    }

    public void setOrgLogo(String orgLogo) {
        this.orgLogo = orgLogo;
    }

    public String getSubscriptionStartDate() {
        return subscriptionStartDate;
    }

    public void setSubscriptionStartDate(String subscriptionStartDate) {
        this.subscriptionStartDate = subscriptionStartDate;
    }

    public String getSubscriptionEndDate() {
        return subscriptionEndDate;
    }

    public void setSubscriptionEndDate(String subscriptionEndDate) {
        this.subscriptionEndDate = subscriptionEndDate;
    }

    public List<WorkflowComponentDTO> getWorkflowComponentDTOList() {
        return workflowComponentDTOList;
    }

    public void setWorkflowComponentDTOList(List<WorkflowComponentDTO> workflowComponentDTOList) {
        this.workflowComponentDTOList = workflowComponentDTOList;
    }

    public List<TemplatesDTO> getTemplatesDTOList() {
        return templatesDTOList;
    }

    public void setTemplatesDTOList(List<TemplatesDTO> templatesDTOList) {
        this.templatesDTOList = templatesDTOList;
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
        hash += (userId != null ? userId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof UserDTO)) {
            return false;
        }
        UserDTO other = (UserDTO) object;
        if ((this.userId == null && other.userId != null) || (this.userId != null && !this.userId.equals(other.userId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "edu.asu.recommendation.customization.dto.UserDTO[userId=" + userId + "]";
    }

}
