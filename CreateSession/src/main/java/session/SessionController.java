package session;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class SessionController {

	 @Autowired
	    private SessionDAO sessionDAO;
	 
	    @RequestMapping(value="/session")
	    public ModelAndView sessionStore(HttpServletRequest request) {
	        // Handle a new session (if any):
	        String lect = request.getParameter("lect");
	        String comp = request.getParameter("comp");
	        String date = request.getParameter("date");
	        String time = request.getParameter("time");
	        String venue = request.getParameter("venue");
	        String duration = request.getParameter("duration");
	        String repeatFreq = request.getParameter("repeatFreq");
	        String maxAttend = request.getParameter("maxAttend");
	       
	        if (date != null){
	        	if (comp == null){
	        		comp = "no";
	        	}
	        	sessionDAO.persist(new Session(date, time, venue, lect, repeatFreq, duration, comp, maxAttend));
	        }
	        return new ModelAndView("session.jsp", "sessionDAO", sessionDAO);
	    }
	
	    @RequestMapping("view")
		public ModelAndView viewTimeTable(){
			return new ModelAndView("view.jsp", "sessionDAO", sessionDAO);
		}
	    
	    @RequestMapping("once")
		public ModelAndView viewOneTimeTable(){
			return new ModelAndView("once.jsp", "sessionDAO", sessionDAO);
		}
	    
	    @RequestMapping("daily")
		public ModelAndView viewDailyTimeTable(){
			return new ModelAndView("daily.jsp", "sessionDAO", sessionDAO);
		}
	    
	    @RequestMapping("weekly")
		public ModelAndView viewWeeklyTimeTable(){
			return new ModelAndView("weekly.jsp", "sessionDAO", sessionDAO);
		}
	    
	    @RequestMapping("monthly")
		public ModelAndView viewMonthlyTimeTable(){
			return new ModelAndView("monthly.jsp", "sessionDAO", sessionDAO);
		}
	    
	    @RequestMapping("yearly")
		public ModelAndView viewYearlyTimeTable(){
			return new ModelAndView("yearly.jsp", "sessionDAO", sessionDAO);
		}
}
