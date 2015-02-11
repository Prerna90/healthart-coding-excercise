package com.healthkart.model.medicalCentre;

import org.apache.commons.lang.builder.ToStringBuilder;
import org.apache.commons.lang.builder.ToStringStyle;

/**
 * Frontend model object
 * @author HP
 *
 */
public class MedicalCentreDto {

	private String name;
	private String phoneNos;
	private String address;

	public MedicalCentreDto(String name, String phoneNos, String address) {
		super();
		this.name = name;
		this.phoneNos = phoneNos;
		this.address = address;
	}

	public String getName() {
		return name;
	}

	public String getPhoneNos() {
		return phoneNos;
	}

	public String getAddress() {
		return address;
	}

	@Override
	public String toString() {
		return ToStringBuilder.reflectionToString(this, ToStringStyle.SHORT_PREFIX_STYLE);
	}

}