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
@Table(name = "gui_table")
@NamedQueries({
    @NamedQuery(name = "GuiComponentDTO.findAll", query = "SELECT g FROM GuiComponentDTO g"),
    @NamedQuery(name = "GuiComponentDTO.findByGuiId", query = "SELECT g FROM GuiComponentDTO g WHERE g.guiId = :guiId"),
    @NamedQuery(name = "GuiComponentDTO.findByGuiName", query = "SELECT g FROM GuiComponentDTO g WHERE g.guiName = :guiName"),
    @NamedQuery(name = "GuiComponentDTO.findByGuiAttribute1", query = "SELECT g FROM GuiComponentDTO g WHERE g.guiAttribute1 = :guiAttribute1"),
    @NamedQuery(name = "GuiComponentDTO.findByGuiAttrValue1", query = "SELECT g FROM GuiComponentDTO g WHERE g.guiAttrValue1 = :guiAttrValue1"),
    @NamedQuery(name = "GuiComponentDTO.findByGuiAttribute2", query = "SELECT g FROM GuiComponentDTO g WHERE g.guiAttribute2 = :guiAttribute2"),
    @NamedQuery(name = "GuiComponentDTO.findByGuiAttrValue2", query = "SELECT g FROM GuiComponentDTO g WHERE g.guiAttrValue2 = :guiAttrValue2"),
    @NamedQuery(name = "GuiComponentDTO.findByGuiAttribute3", query = "SELECT g FROM GuiComponentDTO g WHERE g.guiAttribute3 = :guiAttribute3"),
    @NamedQuery(name = "GuiComponentDTO.findByGuiAttrValue3", query = "SELECT g FROM GuiComponentDTO g WHERE g.guiAttrValue3 = :guiAttrValue3"),
    @NamedQuery(name = "GuiComponentDTO.findByUrl", query = "SELECT g FROM GuiComponentDTO g WHERE g.url = :url")})
public class GuiComponentDTO implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "gui_id")
    private Integer guiId;
    @Column(name = "gui_name")
    private String guiName;
    @Column(name = "gui_attribute1")
    private String guiAttribute1;
    @Column(name = "gui_attr_value1")
    private String guiAttrValue1;
    @Column(name = "gui_attribute2")
    private String guiAttribute2;
    @Column(name = "gui_attr_value2")
    private String guiAttrValue2;
    @Column(name = "gui_attribute3")
    private String guiAttribute3;
    @Column(name = "gui_attr_value3")
    private String guiAttrValue3;
    @Basic(optional = false)
    @Column(name = "URL")
    private String url;
    @JoinColumn(name = "template_id", referencedColumnName = "template_id")
    @ManyToOne
    private TemplatesDTO templateID;
    @JoinColumn(name = "user_id", referencedColumnName = "user_id")
    @ManyToOne
    private UserDTO userID;

    public GuiComponentDTO() {
    }

    public GuiComponentDTO(Integer guiId) {
        this.guiId = guiId;
    }

    public GuiComponentDTO(Integer guiId, String url) {
        this.guiId = guiId;
        this.url = url;
    }

    public Integer getGuiId() {
        return guiId;
    }

    public void setGuiId(Integer guiId) {
        this.guiId = guiId;
    }

    public String getGuiName() {
        return guiName;
    }

    public void setGuiName(String guiName) {
        this.guiName = guiName;
    }

    public String getGuiAttribute1() {
        return guiAttribute1;
    }

    public void setGuiAttribute1(String guiAttribute1) {
        this.guiAttribute1 = guiAttribute1;
    }

    public String getGuiAttrValue1() {
        return guiAttrValue1;
    }

    public void setGuiAttrValue1(String guiAttrValue1) {
        this.guiAttrValue1 = guiAttrValue1;
    }

    public String getGuiAttribute2() {
        return guiAttribute2;
    }

    public void setGuiAttribute2(String guiAttribute2) {
        this.guiAttribute2 = guiAttribute2;
    }

    public String getGuiAttrValue2() {
        return guiAttrValue2;
    }

    public void setGuiAttrValue2(String guiAttrValue2) {
        this.guiAttrValue2 = guiAttrValue2;
    }

    public String getGuiAttribute3() {
        return guiAttribute3;
    }

    public void setGuiAttribute3(String guiAttribute3) {
        this.guiAttribute3 = guiAttribute3;
    }

    public String getGuiAttrValue3() {
        return guiAttrValue3;
    }

    public void setGuiAttrValue3(String guiAttrValue3) {
        this.guiAttrValue3 = guiAttrValue3;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
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
        hash += (guiId != null ? guiId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof GuiComponentDTO)) {
            return false;
        }
        GuiComponentDTO other = (GuiComponentDTO) object;
        if ((this.guiId == null && other.guiId != null) || (this.guiId != null && !this.guiId.equals(other.guiId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "edu.asu.recommendation.customization.dto.GuiComponentDTO[guiId=" + guiId + "]";
    }

}
