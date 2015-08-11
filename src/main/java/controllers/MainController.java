package controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

@Controller
public class MainController {

    @RequestMapping(value = "/entries", method = RequestMethod.GET)
    public ModelAndView entries(HttpServletRequest request){
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("entries");
        return modelAndView;
    }

    @RequestMapping(value = "/answer", method = RequestMethod.GET)
    public ModelAndView answer(HttpServletRequest request){
        ModelAndView modelAndView = new ModelAndView();

        if (request.getParameter("lastName").length() != 0
                && request.getParameter("firstName").length() != 0
                && request.getParameter("secondName").length() != 0){
            modelAndView.setViewName("answergood");
        }else{
            modelAndView.setViewName("answerbad");
        }


        return modelAndView;
    }
}
