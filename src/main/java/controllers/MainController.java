package controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.mail.*;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import java.util.Date;
import java.util.Properties;

@Controller
public class MainController {

    @RequestMapping(value = "/entries", method = RequestMethod.GET)
    public ModelAndView entries(){
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("entries");
        return modelAndView;
    }

    @RequestMapping(value = "/answer", method = RequestMethod.GET)
    public ModelAndView answer(HttpServletRequest request){
        ModelAndView modelAndView = new ModelAndView();

        if (request.getParameter("lastName").length() != 0
                && request.getParameter("firstName").length() != 0
                && request.getParameter("secondName").length() != 0
                && request.getParameter("lastName").toUpperCase().equals(request.getParameter("lastName"))
                && request.getParameter("firstName").toUpperCase().equals(request.getParameter("firstName"))
                && request.getParameter("secondName").toUpperCase().equals(request.getParameter("secondName"))){


            String SMPT_HOSTNAME = "smtp.gmail.com";
            final String USERNAME = "username for account email from";
            final String PASSWORD = "password for account email from";

            Properties props = new Properties();
            props.put("mail.smtp.host", SMPT_HOSTNAME);
            props.put("mail.from","email from");
            props.put("mail.smtp.starttls.enable", "true");
            props.put("mail.smtp.auth", "true");
            props.put("mail.debug", "true");

            Session session = Session.getInstance(props, new Authenticator() {
                @Override
                protected PasswordAuthentication getPasswordAuthentication() {
                    return new PasswordAuthentication(USERNAME, PASSWORD);
                }
            });
            try {
                MimeMessage msg = new MimeMessage(session);
                msg.setFrom();
                msg.setRecipients(Message.RecipientType.TO,
                        "pavel.veinik@gmail.com");
                msg.setSubject("Result RegForm");
                msg.setSentDate(new Date());
                msg.setText("New man is registered\nLast name: " + request.getParameter("lastName")
                                + "\nFirst name: " + request.getParameter("firstName")
                                + "\nSecond name: " + request.getParameter("secondName")
                                + "\nAge: " + request.getParameter("age")
                                + "\nProfession: " + request.getParameter("profession")
                                + "\nPhone: +375" + request.getParameter("phone"));
                Transport.send(msg);
            } catch (MessagingException mex) {
                System.out.println("send failed, exception: " + mex);
            }

            modelAndView.setViewName("answergood");
        }else{
            modelAndView.setViewName("answerbad");
        }
        return modelAndView;
    }
}
