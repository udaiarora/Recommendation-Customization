/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package edu.asu.recommendation.customization.dto;

import java.io.Serializable;

import javax.annotation.Generated;
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
@Table(name = "workflow_table")
@NamedQueries({
    @NamedQuery(name = "WorkflowComponentDTO.findAll", query = "SELECT w FROM WorkflowComponentDTO w"),
    @NamedQuery(name = "WorkflowComponentDTO.findByWorkflowId", query = "SELECT w FROM WorkflowComponentDTO w WHERE w.workflowId = :workflowId"),
    @NamedQuery(name = "WorkflowComponentDTO.findByWorkflowName", query = "SELECT w FROM WorkflowComponentDTO w WHERE w.workflowName = :workflowName"),
    @NamedQuery(name = "WorkflowComponentDTO.findByStep1", query = "SELECT w FROM WorkflowComponentDTO w WHERE w.step1 = :step1"),
    @NamedQuery(name = "WorkflowComponentDTO.findByStep2", query = "SELECT w FROM WorkflowComponentDTO w WHERE w.step2 = :step2"),
    @NamedQuery(name = "WorkflowComponentDTO.findByStep3", query = "SELECT w FROM WorkflowComponentDTO w WHERE w.step3 = :step3"),
    @NamedQuery(name = "WorkflowComponentDTO.findByStep4", query = "SELECT w FROM WorkflowComponentDTO w WHERE w.step4 = :step4"),
    @NamedQuery(name = "WorkflowComponentDTO.findByStep5", query = "SELECT w FROM WorkflowComponentDTO w WHERE w.step5 = :step5"),
    @NamedQuery(name = "WorkflowComponentDTO.findByCustomizationType", query = "SELECT w FROM WorkflowComponentDTO w WHERE w.customizationType = :customizationType")})
public class WorkflowComponentDTO implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "workflow_id")
    private Integer workflowId;
    @Column(name = "workflow_name")
    private String workflowName;
    @Column(name = "step_1")
    private String step1;
    @Column(name = "step_2")
    private String step2;
    @Column(name = "step_3")
    private String step3;
    @Column(name = "step_4")
    private String step4;
    @Column(name = "step_5")
    private String step5;
    @Column(name = "customization_type")
    private String customizationType;
    @JoinColumn(name = "template_id", referencedColumnName = "template_id")
    @ManyToOne
    private TemplatesDTO templateID;
    @JoinColumn(name = "user_id", referencedColumnName = "user_id")
    @ManyToOne
    private UserDTO userID;

    public WorkflowComponentDTO() {
    }

    public WorkflowComponentDTO(Integer workflowId) {
        this.workflowId = workflowId;
    }

    public Integer getWorkflowId() {
        return workflowId;
    }

    public void setWorkflowId(Integer workflowId) {
        this.workflowId = workflowId;
    }

    public String getWorkflowName() {
        return workflowName;
    }

    public void setWorkflowName(String workflowName) {
        this.workflowName = workflowName;
    }

    public String getStep1() {
        return step1;
    }

    public void setStep1(String step1) {
        this.step1 = step1;
    }

    public String getStep2() {
        return step2;
    }

    public void setStep2(String step2) {
        this.step2 = step2;
    }

    public String getStep3() {
        return step3;
    }

    public void setStep3(String step3) {
        this.step3 = step3;
    }

    public String getStep4() {
        return step4;
    }

    public void setStep4(String step4) {
        this.step4 = step4;
    }

    public String getStep5() {
        return step5;
    }

    public void setStep5(String step5) {
        this.step5 = step5;
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
        hash += (workflowId != null ? workflowId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof WorkflowComponentDTO)) {
            return false;
        }
        WorkflowComponentDTO other = (WorkflowComponentDTO) object;
        if ((this.workflowId == null && other.workflowId != null) || (this.workflowId != null && !this.workflowId.equals(other.workflowId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "edu.asu.recommendation.customization.dto.WorkflowComponentDTO[workflowId=" + workflowId + "]";
    }

}
