package connected.controller;

import java.security.Principal;
import java.util.Date;
import java.util.List;

import javax.mail.MessagingException;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;

import connected.model.Concern;
import connected.service.ConcernService;
import connected.service.EmailService;
import connected.service.UserService;

@Controller
public class HomeController {

    @Autowired
    private UserService userService;
    
    @Autowired
    private ConcernService concernService;
    
	@Autowired
	private EmailService emailService;

	
	@RequestMapping("/")
	public ModelAndView index() {
		ModelAndView model = new ModelAndView("index");
		return model;
	}
	
	
	@RequestMapping("/Login")
	public ModelAndView login() {
		ModelAndView model = new ModelAndView("Login");
		return model;
	}
	

	@RequestMapping("/Admin")
	public ModelAndView admin() {
		List<Concern> concerns = concernService.listConcernsByStatus();
		String json = new Gson().toJson(concerns);
		ModelAndView model = new ModelAndView("Admin");
		model.addObject("concerns", json);
		return model;
	}
	
	
	@RequestMapping("/Concern")
	public ModelAndView newConcern(Model m) {
		m.addAttribute("concern", new Concern());
		
		ModelAndView model = new ModelAndView("Concern");
		
		return model;
	}
	
	@RequestMapping("/ShowConcern/{id}")
	public String showConcern(@PathVariable("id") int id,Model m) {
		m.addAttribute("concern", concernService.getConcernById(id));
		return "ConcernDetails";
	}
	
	@RequestMapping("/EditConcern/{id}")
	public String editConcern(@PathVariable("id") int id,Model m) {
		Concern c=concernService.getConcernById(id);
		c.setOpen(false);
		concernService.updateConcern(c);
		m.addAttribute("concern", concernService.getConcernById(id));
		return "ConcernDetails";
	}
	
	@RequestMapping(value = "/Concern/add",method=RequestMethod.POST)
	public String addConcern(Model model,@Valid @ModelAttribute("concern") Concern c, BindingResult result, Principal principal) {

		if(result.hasErrors())
			return "Concern";
		
		c.setDateReported(new Date());
		c.setOpen(true);
		concernService.addConcern(c);
		
try{
			
			emailService.sendToAdmin(c);
			emailService.sendToStudent(c);
			}catch(MessagingException mse)
			{
				mse.printStackTrace();
			}
		
		return "redirect:/";
	
	}
	
	
	
}
