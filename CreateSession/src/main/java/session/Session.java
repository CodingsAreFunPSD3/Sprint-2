package session;

import java.io.Serializable;
import java.sql.Date;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class Session implements Serializable {
	
	private static final long serialVersionUID = 1L;
	 
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
    
    // Constructors:
    public Session() {
    }
    
    public Session(String date, String time, String venue, String lect, String repeatFreq, String duration, String comp, String maxAttend) {
    	this.date = date;
    	this.time = time;
    	this.venue = venue;
    	this.lect = lect;
    	this.repeatFreq = repeatFreq;
    	this.duration = duration;
    	this.comp = comp;
    	this.maxAttend = maxAttend;
    }
 
    // String Representation:
    @Override
    public String toString() {
     //   return "Session Details: Lecturer = " + lect + " saved.";
  //  return "<tr> <td>" + date + "</td> <td>" + time +"</td> <td>" + venue + "</td> <td>" + lect + "</td> <td>" + duration + "</td> <td>" + 
    //		 comp + "</td> <td>"+ repeatFreq + "</td> <td>" + maxAttend + " </td> </tr>";
    	 return "<tr> <td>" + date + "</td> <td>" + time +"</td> <td>" + venue + "</td> <td>" + lect + "</td> <td>" + duration + "</td> <td>" + 
		 comp + "</td> <td>" + maxAttend + " </td> </tr>";
    } 

}
