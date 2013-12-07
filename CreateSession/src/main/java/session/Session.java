package session;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class Session {
	 
    // Persistent Fields:
    @Id @GeneratedValue
    Long id;
    private String lect;
    private String comp;
    private String date;
    private String time;
    private String venue;
    private String duration;
    private String repeatFreq;
    private String maxAttend;
    private String course;
    private String module;
    
    // Constructors:
    public Session() {
    }
    
    public Session(String module, String date, String time, String venue, String lect, String repeatFreq, String duration, String comp, String maxAttend, String course) {
    	this.module = module;
    	this.date = date;
    	this.time = time;
    	this.venue = venue;
    	this.lect = lect;
    	this.repeatFreq = repeatFreq;
    	this.duration = duration;
    	this.comp = comp;
    	this.maxAttend = maxAttend;
    	this.course = course;
    }
    
    // String Representation:
    @Override
    public String toString() {
    	 //return "<tr> <td>" + module + "</td> <td>" + date + "</td> <td>" + time +"</td> <td>" + venue + "</td> <td>" + lect + "</td> <td>" + duration + "</td> <td>" + 
		 //comp + "</td> <td>"+ repeatFreq + "</td> <td>" + maxAttend + " </td> </tr>";
     	 return "<td>" + module + "</td> <td>" + date + "</td> <td>" + time +"</td> <td>" + venue + "</td> <td>" + lect + "</td> <td>" + duration + "</td> <td>" + 
   		 comp + "</td> <td>"+ repeatFreq + "</td> <td>" + maxAttend + " </td>";
       
    } 


}
