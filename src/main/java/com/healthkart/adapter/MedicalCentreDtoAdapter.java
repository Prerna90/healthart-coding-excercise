package com.healthkart.adapter;

import org.springframework.stereotype.Component;
import com.healthkart.model.medicalCentre.MedicalCentreDto;
import com.healthkart.persistence.model.MedicalCentre;

/**
 * Adpater class to convert Dao object to dto objects
 * 
 * @author HP
 * 
 */
@Component
public class MedicalCentreDtoAdapter {

	/**
	 * Adapts Medical Centre Database object to frontend objects. [Currently the logic is simple. It can extend to some
	 * complex logic later.]
	 * 
	 * @param medicalCentre
	 * @return
	 */
	public MedicalCentreDto adapt(MedicalCentre medicalCentre) {
		MedicalCentreDto centreDto = new MedicalCentreDto(medicalCentre.getName(), medicalCentre.getPhoneNos(),
				medicalCentre.getAddress());
		return centreDto;
	}
}