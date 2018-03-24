package co.herod.spring_kotlin_docker_template

import org.springframework.beans.factory.annotation.Autowired
import org.springframework.web.bind.annotation.GetMapping
import org.springframework.web.bind.annotation.RequestMapping
import org.springframework.web.bind.annotation.RequestParam
import org.springframework.web.bind.annotation.RestController
import org.springframework.web.servlet.mvc.support.RedirectAttributes
import org.springframework.web.servlet.view.RedirectView
import java.util.concurrent.atomic.AtomicLong
import javax.servlet.http.HttpServletRequest

@RequestMapping("/")
@RestController
class RootController {

    @Autowired
    lateinit var httpServletRequest: HttpServletRequest

    val counter = AtomicLong()

    @GetMapping("/")
    fun greeting(@RequestParam(value = "name", defaultValue = "World") name: String): Greeting =
            Greeting(counter.incrementAndGet(), httpServletRequest.toString())

    @GetMapping("/redirect")
    fun redirectWithUsingRedirectView(attributes: RedirectAttributes): RedirectView =
            RedirectView("redirectedUrl")
}