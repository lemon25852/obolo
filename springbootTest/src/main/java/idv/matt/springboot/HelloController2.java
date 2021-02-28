package idv.matt.springboot;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class HelloController2 {
    @RequestMapping({ "/A2" })
    public String getWeb2() {
        return "generic.html";
    }
}