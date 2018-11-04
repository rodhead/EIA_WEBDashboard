package org.main.eia.model;

import javax.annotation.Generated;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="eia_user_acc")
public class User {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="uid")
	private int uid;
	
	@Column(name="uName")
	private String uName;
	
	@Column(name="emailId")
	private String emailId;
	
	@Column(name="password")
	private String password;
	
	
	/*@Column(name="userStatus")
	private String userStatus;

	@Column(name="createdDate")
	private String createdDate;
	
	@Column(name="updatedDate")
	private String updatedDate;*/
	
	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public User() {
		
	}

	

	public User(int uid, String uName, String emailId, String password) {
		super();
		this.uid = uid;
		this.uName = uName;
		this.emailId = emailId;
		this.password = password;
	}

	public int getUid() {
		return uid;
	}

	public void setUid(int uid) {
		this.uid = uid;
	}

	public String getuName() {
		return uName;
	}

	public void setuName(String uName) {
		this.uName = uName;
	}

	public String getEmailId() {
		return emailId;
	}

	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}
/*
	public String getUserStatus() {
		return userStatus;
	}

	public void setUserStatus(String userStatus) {
		this.userStatus = userStatus;
	}

	public String getCreatedDate() {
		return createdDate;
	}

	public void setCreatedDate(String createdDate) {
		this.createdDate = createdDate;
	}

	public String getUpdatedDate() {
		return updatedDate;
	}

	public void setUpdatedDate(String updatedDate) {
		this.updatedDate = updatedDate;
	}*/

	@Override
	public String toString() {
		return "User [uid=" + uid + ", uName=" + uName + ", emailId=" + emailId + ", password=" + password + "]";
	}

	
	
	
}
