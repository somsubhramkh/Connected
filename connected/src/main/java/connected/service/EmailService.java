package connected.service;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;

import connected.model.User;
import connected.model.Concern;;

@Service
public class EmailService {

    public static final String REPLY_TO_ADDRESS = "dontreply@sparx.com";
    public static final String FROM_ADDRESS = "registration@sparx.com";

    @Autowired
    private JavaMailSender javaMailSender;

    public void sendToAdmin(Concern c) throws MessagingException {
        
    	String[] recipients=new String[]{"somsubhra.m@niit.com","somsubhramukherjee@gmail.com"};
    	MimeMessage mail = javaMailSender.createMimeMessage();
        MimeMessageHelper helper = new MimeMessageHelper(mail, true);
        helper.setTo(recipients);
        helper.setReplyTo(REPLY_TO_ADDRESS);
        helper.setFrom(FROM_ADDRESS);
        helper.setSubject("Concern::"+c.getName()+"::"+c.getDateReported()+"::"+c.getSubject());
        helper.setText(c.getBody());
        javaMailSender.send(mail);
    }
    
public void sendToStudent(Concern c) throws MessagingException {
        
    	System.out.println("Inside Mail");
    	MimeMessage mail = javaMailSender.createMimeMessage();
        MimeMessageHelper helper = new MimeMessageHelper(mail, true);
        helper.setTo(c.getEmailId());
        helper.setReplyTo(REPLY_TO_ADDRESS);
        helper.setFrom(FROM_ADDRESS);
        helper.setSubject("Concern::"+c.getConcernId()+" NIIT Camac Street Centre:"+c.getName());
        helper.setText("Dear Student, We are in receipt of your concern and will get back to you shortly.");
        javaMailSender.send(mail);
    }
}