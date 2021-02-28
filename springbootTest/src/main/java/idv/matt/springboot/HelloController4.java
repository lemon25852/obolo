package idv.matt.springboot;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.stereotype.Controller;


@Controller
public class HelloController4 {

//    @RequestMapping("/A4")
//    public ModelAndView hello() {
//        return new ModelAndView("hello"); // 根據view resolver mapping至hello.jsp
//    }
    
    @RequestMapping("/A4")
    public String hello() {
        return "hello";
    }
}