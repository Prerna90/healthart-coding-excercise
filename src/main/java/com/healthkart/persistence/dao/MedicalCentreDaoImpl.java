package com.healthkart.persistence.dao;

import java.util.List;
import org.springframework.stereotype.Repository;
import com.healthkart.persistence.model.MedicalCentre;

@Repository("medicalStoreDao")
public class MedicalCentreDaoImpl extends CustomHibernateDaoSupport implements MedicalCentreDao {

	@Override
	public MedicalCentre selectCentre(int id) {
		@SuppressWarnings("rawtypes")
		List list = getHibernateTemplate().find("from MedicalCentre where id=?", id);
		return (MedicalCentre) list.get(0);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<MedicalCentre> getAllMedicalCentres() {
		@SuppressWarnings("rawtypes")
		List list = getHibernateTemplate().find("from MedicalCentre ");
		return ((List<MedicalCentre>)list);
	}

}
