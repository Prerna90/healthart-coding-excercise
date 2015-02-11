package com.healthkart.persistence.model;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import org.hibernate.annotations.AccessType;

/**
 * Hibernate mapping class to medical store table
 * 
 * @author HP
 * 
 */
@Entity
@Table(name = "medical_centre")
@AccessType("field")
public class MedicalCentre implements Serializable {

	private static final long serialVersionUID = 3729678159904528103L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "ID", nullable = false)
	protected int id;

	@Column(name = "NAME", length = 124, nullable = false, unique = true)
	private String name;

	@Column(name = "PHONE_NOS", length = 124, nullable = true, unique = true)
	private String phoneNos;

	@Column(name = "ADDRESS", length = 512, nullable = true)
	private String address;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPhoneNos() {
		return phoneNos;
	}

	public void setPhoneNos(String phoneNos) {
		this.phoneNos = phoneNos;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

}
