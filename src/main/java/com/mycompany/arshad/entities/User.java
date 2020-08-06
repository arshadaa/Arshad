
package com.mycompany.arshad.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class User {


        @Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)			// For Autoincereamation of uid Value.
	@Column(length = 10,name = "user_id")
	private int uid;
	@Column(length = 100,name = "user_name")
	private String uName;
	@Column(length = 50,name = "user_Email")
	private String uEmail;
	@Column(length = 100, name = "user_password")
	private String uPassword;
	@Column(length = 13, name = "user_phone_number")
	private String uPhone;
	@Column(length = 1500, name = "user_address")
	private String uAddress;
	
	private String userType;
	
	
	

	
	public User(int uid, String uName, String uEmail, String uPassword, String uPhone, String uAddress,String userType) {
		super();
		this.uid = uid;
		this.uName = uName;
		this.uEmail = uEmail;
		this.uPassword = uPassword;
		this.uPhone = uPhone;
		this.uAddress = uAddress;
		this.userType = userType;
	}
	
	

	public User(String uName, String uEmail, String uPassword, String uPhone, String uAddress,String userType) {
		super();
		this.uName = uName;
		this.uEmail = uEmail;
		this.uPassword = uPassword;
		this.uPhone = uPhone;
		this.uAddress = uAddress;
		this.userType = userType;
	}



	public User() {
		super();
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

	public String getuPassword() {
		return uPassword;
	}

	public void setuPassword(String uPassword) {
		this.uPassword = uPassword;
	}

	public String getuPhone() {
		return uPhone;
	}

	public void setuPhone(String uPhone) {
		this.uPhone = uPhone;
	}

	public String getuAddress() {
		return uAddress;
	}

	public void setuAddress(String uAddress) {
		this.uAddress = uAddress;
	}



	public String getuEmail() {
		return uEmail;
	}



	public void setuEmai(String uEmail) {
		this.uEmail = uEmail;
	}

	


	public String getUserType() {
		return userType;
	}



	public void setUserType(String userType) {
		this.userType = userType;
	}



	public void setuEmail(String uEmail) {
		this.uEmail = uEmail;
	}



	@Override
	public String toString() {
		return "User [uid=" + uid + ", uName=" + uName + ", uEmail=" + uEmail + ", uPassword=" + uPassword + ", uPhone="
				+ uPhone + ", uAddress=" + uAddress + ", userType=" + userType + "]";
	}

}
