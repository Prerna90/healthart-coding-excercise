package com.healthkart.processor;

import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import com.healthkart.adapter.MedicalCentreDtoAdapter;
import com.healthkart.model.medicalCentre.MedicalCentreDto;
import com.healthkart.persistence.dao.MedicalCentreDao;
import com.healthkart.persistence.model.MedicalCentre;

/**
 * Processor call to interact between dao (DB) and dto (Frontend) objects. This class can also do computation what so
 * ever required.
 * 
 * @author HP
 * 
 */
@Component
public class MedicalCentreProcessor {

	@Autowired
	MedicalCentreDao medicalStoreDao;

	@Autowired
	MedicalCentreDtoAdapter adapter;

	public List<MedicalCentreDto> getAllMedicalCentres() {

		// Making DB call to get the data from database
		List<MedicalCentre> centres = medicalStoreDao.getAllMedicalCentres();

		// Converts backend object to frontend objects.
		// Before or after the conversion processor class is responsible for doing
		// all kind of operations like sorting , filter watsoever we want to add ,
		// to make a separate independent unit for processing
		List<MedicalCentreDto> centreDtos = new ArrayList<MedicalCentreDto>();
		for (MedicalCentre centre : centres) {
			centreDtos.add(adapter.adapt(centre));
		}
		return centreDtos;
	}

	public List<MedicalCentreDto> getAllMedicalCentresInArea(String area) {

		List<MedicalCentre> centres = medicalStoreDao.getAllMedicalCentres();

		List<MedicalCentreDto> centreDtos = new ArrayList<MedicalCentreDto>();
		for (MedicalCentre centre : centres) {
			if (centre.getAddress().toUpperCase().contains(area.toUpperCase())) {
				centreDtos.add(adapter.adapt(centre));
			}

		}
		return centreDtos;
	}

}