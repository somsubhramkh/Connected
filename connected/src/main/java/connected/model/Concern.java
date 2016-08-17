package connected.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Transient;

import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import connected.service.UserService;

@Entity
public class Concern {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int concernId;
	@NotEmpty(message="Student ID can't be empty")
	private String studentId;
	
	@NotEmpty(message="Name can't be empty")
	private String name;

	@NotEmpty(message="Email ID can't be empty")
	private String emailId;
	
	@NotEmpty(message="Mobile No. can't be empty")
	private String mobile;
	
	@NotEmpty(message="Address can't be empty")
	private String address;
	
	@NotEmpty(message="Please select Category")
	private String category;
	
	@NotEmpty(message="Subject can't be empty")
	private String subject;
	
	@NotEmpty(message="Body can't be empty")
	private String body;
	
	private Date dateReported;

	private Date dateclosed;
	
	private boolean open;
	
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
		
	public Date getDateReported() {
		return dateReported;
	}


	public void setDateReported(Date dateReported) {
		this.dateReported = dateReported;
	}


	public Date getDateclosed() {
		return dateclosed;
	}


	public void setDateclosed(Date dateclosed) {
		this.dateclosed = dateclosed;
	}


	public boolean isOpen() {
		return open;
	}


	public void setOpen(boolean open) {
		this.open = open;
	}


	public Concern()
	{
		
	}
	

	public int getConcernId() {
		return concernId;
	}



	public void setConcernId(int concernId) {
		this.concernId = concernId;
	}



	public String getStudentId() {
		return studentId;
	}



	public void setStudentId(String studentId) {
		this.studentId = studentId;
	}



	public String getEmailId() {
		return emailId;
	}



	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}



	public String getMobile() {
		return mobile;
	}



	public void setMobile(String mobile) {
		this.mobile = mobile;
	}



	public String getAddress() {
		return address;
	}



	public void setAddress(String address) {
		this.address = address;
	}



	


	public String getCategory() {
		return category;
	}



	public void setCategory(String category) {
		this.category = category;
	}



	public String getSubject() {
		return subject;
	}



	public void setSubject(String subject) {
		this.subject = subject;
	}



	public String getBody() {
		return body;
	}



	public void setBody(String body) {
		this.body = body;
	}

	
}
