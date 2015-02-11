package com.healthkart.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.healthkart.model.medicalCentre.MedicalCentreDto;
import com.healthkart.processor.MedicalCentreProcessor;

/**
 * Controller class to handle the request. Request from the URL call will be directed to Controller classes via spring.
 * It will try to find the appropriate RequestMapping and make the call.
 * 
 * @author HP
 * 
 */
@Controller
@RequestMapping("/medicalStores")
public class MedicalCentreController {

	@Autowired
	MedicalCentreProcessor processor;

	private final String JSP_FILE = "medical-centre";

	/**
	 * API calls to processor to get all medical centres in specific area
	 * 
	 * @param areaName
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/{areaName}", method = RequestMethod.GET)
	public String getMedicalWithGivenCity(@PathVariable String areaName, ModelMap model) {
		List<MedicalCentreDto> centres = processor.getAllMedicalCentresInArea(areaName);
		model.addAttribute("medicalCentres", centres);
		return JSP_FILE;
	}

	/**
	 * API calls the processor class to get the list of all the medical stores available
	 * 
	 * @param model
	 * @return
	 */
	@RequestMapping(method = RequestMethod.GET)
	public String getMedicalAllCentre(ModelMap model) {
		List<MedicalCentreDto> centres = processor.getAllMedicalCentres();
		model.addAttribute("medicalCentres", centres);
		return JSP_FILE;
	}

}