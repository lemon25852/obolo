package idv.matt.springboot;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class HelloController3 {
    @RequestMapping({ "/A3" })
    public String getWeb3() {
        return "elements.html";
    }
}