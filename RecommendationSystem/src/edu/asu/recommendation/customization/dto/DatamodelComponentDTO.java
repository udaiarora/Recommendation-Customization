/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package edu.asu.recommendation.customization.dto;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
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
@Table(name = "datamodel_table")
@NamedQueries({
    @NamedQuery(name = "DatamodelComponentDTO.findAll", query = "SELECT d FROM DatamodelComponentDTO d"),
    @NamedQuery(name = "DatamodelComponentDTO.findBySchemaId", query = "SELECT d FROM DatamodelComponentDTO d WHERE d.schemaId = :schemaId"),
    @NamedQuery(name = "DatamodelComponentDTO.findByTableId", query = "SELECT d FROM DatamodelComponentDTO d WHERE d.tableId = :tableId"),
    @NamedQuery(name = "DatamodelComponentDTO.findByTableName", query = "SELECT d FROM DatamodelComponentDTO d WHERE d.tableName = :tableName"),
    @NamedQuery(name = "DatamodelComponentDTO.findByTableName1", query = "SELECT d FROM DatamodelComponentDTO d WHERE d.tableName1 = :tableName1"),
    @NamedQuery(name = "DatamodelComponentDTO.findByTableName2", query = "SELECT d FROM DatamodelComponentDTO d WHERE d.tableName2 = :tableName2"),
    @NamedQuery(name = "DatamodelComponentDTO.findByTableName3", query = "SELECT d FROM DatamodelComponentDTO d WHERE d.tableName3 = :tableName3"),
    @NamedQuery(name = "DatamodelComponentDTO.findByTableName4", query = "SELECT d FROM DatamodelComponentDTO d WHERE d.tableName4 = :tableName4"),
    @NamedQuery(name = "DatamodelComponentDTO.findByTableName5", query = "SELECT d FROM DatamodelComponentDTO d WHERE d.tableName5 = :tableName5"),
    @NamedQuery(name = "DatamodelComponentDTO.findByCustomizationType", query = "SELECT d FROM DatamodelComponentDTO d WHERE d.customizationType = :customizationType")})
public class DatamodelComponentDTO implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @Column(name = "schema_id")
    private Integer schemaId;
    @Column(name = "table_id")
    private Integer tableId;
    @Column(name = "table_name")
    private String tableName;
    @Column(name = "table_name1")
    private String tableName1;
    @Column(name = "table_name2")
    private String tableName2;
    @Column(name = "table_name3")
    private String tableName3;
    @Column(name = "table_name4")
    private String tableName4;
    @Column(name = "table_name5")
    private String tableName5;
    @Column(name = "customization_type")
    private String customizationType;
    @JoinColumn(name = "template_id", referencedColumnName = "template_id")
    @ManyToOne
    private TemplatesDTO templateID;
    @JoinColumn(name = "user_id", referencedColumnName = "user_id")
    @ManyToOne
    private UserDTO userID;

    public DatamodelComponentDTO() {
    }

    public DatamodelComponentDTO(Integer schemaId) {
        this.schemaId = schemaId;
    }

    public Integer getSchemaId() {
        return schemaId;
    }

    public void setSchemaId(Integer schemaId) {
        this.schemaId = schemaId;
    }

    public Integer getTableId() {
        return tableId;
    }

    public void setTableId(Integer tableId) {
        this.tableId = tableId;
    }

    public String getTableName() {
        return tableName;
    }

    public void setTableName(String tableName) {
        this.tableName = tableName;
    }

    public String getTableName1() {
        return tableName1;
    }

    public void setTableName1(String tableName1) {
        this.tableName1 = tableName1;
    }

    public String getTableName2() {
        return tableName2;
    }

    public void setTableName2(String tableName2) {
        this.tableName2 = tableName2;
    }

    public String getTableName3() {
        return tableName3;
    }

    public void setTableName3(String tableName3) {
        this.tableName3 = tableName3;
    }

    public String getTableName4() {
        return tableName4;
    }

    public void setTableName4(String tableName4) {
        this.tableName4 = tableName4;
    }

    public String getTableName5() {
        return tableName5;
    }

    public void setTableName5(String tableName5) {
        this.tableName5 = tableName5;
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
        hash += (schemaId != null ? schemaId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof DatamodelComponentDTO)) {
            return false;
        }
        DatamodelComponentDTO other = (DatamodelComponentDTO) object;
        if ((this.schemaId == null && other.schemaId != null) || (this.schemaId != null && !this.schemaId.equals(other.schemaId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "edu.asu.recommendation.customization.dto.DatamodelComponentDTO[schemaId=" + schemaId + "]";
    }

}
