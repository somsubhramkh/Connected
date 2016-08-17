package connected.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import connected.model.Concern;


@Repository
@Transactional
public class ConcernDAO {

	private static final Logger logger = LoggerFactory.getLogger(ConcernDAO.class);

	@Autowired
	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sf) {
		this.sessionFactory = sf;
	}

	public void addConcern(Concern c) {
		Session session = this.sessionFactory.getCurrentSession();
		session.saveOrUpdate(c);
		logger.info("Concern saved successfully, Concern Details=" + c);

	}

	public void updateConcern(Concern c) {
		Session session = this.sessionFactory.getCurrentSession();
		session.update(c);
		logger.info("Concern updated successfully, Concern Details=" + c);
	}

	@SuppressWarnings("unchecked")

	public List<Concern> listConcerns() {
		Session session = sessionFactory.getCurrentSession();

		List<Concern> concernList = session.createQuery("from Concern").list();
		for (Concern c : concernList) {
			logger.info("Concern List::" + c);
		}

		return concernList;
	}

	public List<Concern> listConcernsByStatus() {
		Session session = sessionFactory.getCurrentSession();

		List<Concern> concerns = session.createQuery("from Concern c where c.open is true").list();
		return concerns;
	}
	

	public Concern getConcernById(int id) {
		Session session = this.sessionFactory.getCurrentSession();
		Concern c = (Concern) session.load(Concern.class, new Integer(id));
		logger.info("Concern loaded successfully, Concern details=" + c);
		return c;
	}
	
		
	
}
