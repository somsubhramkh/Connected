package connected.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;



import connected.dao.ConcernDAO;
import connected.model.Concern;


@Service
public class ConcernService {
	
	@Autowired
	private ConcernDAO concernDAO;

	public void setConcernDAO(ConcernDAO c) {
		this.concernDAO = c;
	}

	@Transactional
	public void addConcern(Concern c) {
		concernDAO.addConcern(c);
	}

	@Transactional
	public void updateConcern(Concern c) {
		concernDAO.updateConcern(c);
	}

	@Transactional
	public List<Concern> listConcerns() {
		return concernDAO.listConcerns();
	}
	
	@Transactional
	public List<Concern> listConcernsByStatus() {
		return concernDAO.listConcernsByStatus();
	}

	@Transactional
	public Concern getConcernById(int id) {
		return concernDAO.getConcernById(id);
	}
	
}

	
	