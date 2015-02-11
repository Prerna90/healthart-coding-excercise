package com.healthkart.persistence.dao;

import java.util.List;
import com.healthkart.persistence.model.MedicalCentre;

/**
 * Interface defining the behavior of Medical Store Class
 * 
 */
public interface MedicalCentreDao {

	/**
	 * Returns a given medical centre from Id
	 * @param id
	 * @return
	 */
	MedicalCentre selectCentre(int id);
	
	/**
	 * Returns a list of all the medical centres available
	 * @return
	 */
	List<MedicalCentre> getAllMedicalCentres();

}