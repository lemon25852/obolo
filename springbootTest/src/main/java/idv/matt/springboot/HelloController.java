package idv.matt.springboot;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class HelloController {
    @RequestMapping({ "/" })
    public String getWeb1() {
        return "index";
    }
}