package edu.asu.recommendation.customization.dto;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * @author 
 *
 */
@Entity
@Table(name="user_table")
public class UserDTO implements Serializable{

	private static final long serialVersionUID = -723583058586873479L;
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name = "user_id")
	private Integer userID;
	
	@Column(name="org_name")
	private String orgName;
	
	@Column(name="user_email")
	private String userEmail;
	
	@Column(name="user_name")
	private String userName;
	
	@Column(name="password")
	private String password;
	
	@Column(name="org_logo")
	private String orgLogo;
	
	@Column(name="subscription_start_date")
	private String subscription_Startdate;
	
	@Column(name="subscription_end_date")
	private String subscription_Enddate;
	
	public Integer getuserID() {
		return userID;
	}

	public void setuserID(Integer userID) {
		this.userID = userID;
	}

	public String getorgName() {
		return orgName;
	}

	public void setorgName(String orgName) {
		this.orgName = orgName;
	}

	public String getuserEmail() {
		return userEmail;
	}

	public void setuserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getorgLogo() {
		return orgLogo;
	}

	public void setorgLogo(String orgLogo) {
		this.orgLogo = orgLogo;
	}

	public String getsubscription_Startdate() {
		return subscription_Startdate;
	}

	public void setsubscription_Startdate(String subscription_Startdate) {
		this.subscription_Startdate = subscription_Startdate;
	}

	public String getsubscription_Enddate() {
		return subscription_Enddate;
	}

	public void setsubscription_Enddate(String subscription_Enddate) {
		this.subscription_Enddate = subscription_Enddate;
	}

	public String getuserName() {
		return userName;
	}

	public void setuserName(String userName) {
		this.userName = userName;
	}
  }
