package session;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

@Component
public class SessionDAO {

	@PersistenceContext private EntityManager em;
	 
    // Stores a new session:
    @Transactional
    public void persist(Session session) {
        em.persist(session);
    }
 
    // Retrieves all the sessions:
    public List<Session> getAllSession() {
        TypedQuery<Session> query = em.createQuery(
            "SELECT s FROM Session s ORDER BY s.id", Session.class);
        return query.getResultList();
    }
    
    //Retrieves one by repeatFreq
    public List<Session> getOneSession() {
    	  TypedQuery<Session> query = em.createQuery(
    "SELECT s FROM Session s WHERE s.repeatFreq='one' ORDER BY s.id", Session.class);
    	  return query.getResultList();
    }
    
    //Retrieves daily by repeatFreq
    public List<Session> getDailySession() {
    	  TypedQuery<Session> query = em.createQuery(
    "SELECT s FROM Session s WHERE s.repeatFreq='daily' ORDER BY s.id", Session.class);
    	  return query.getResultList();
    }
    
    //Retrieves weekly by repeatFreq
    public List<Session> getWeeklySession() {
    	  TypedQuery<Session> query = em.createQuery(
    "SELECT s FROM Session s WHERE s.repeatFreq='weekly' ORDER BY s.id", Session.class);
    	  return query.getResultList();
    }
    
    //Retrieves monthly by repeatFreq
    public List<Session> getMonthlySession() {
    	  TypedQuery<Session> query = em.createQuery(
    "SELECT s FROM Session s WHERE s.repeatFreq='monthly' ORDER BY s.id", Session.class);
    	  return query.getResultList();
    }
    
  //Retrieves yearly by repeatFreq
    public List<Session> getYearlySession() {
    	  TypedQuery<Session> query = em.createQuery(
    "SELECT s FROM Session s WHERE s.repeatFreq='yearly' ORDER BY s.id", Session.class);
    	  return query.getResultList();
    }
}
