package co.herod.springkotlindockertemplate

import org.springframework.web.bind.annotation.GetMapping
import org.springframework.web.bind.annotation.RequestMapping
import org.springframework.web.bind.annotation.RequestParam
import org.springframework.web.bind.annotation.RestController
import org.springframework.web.servlet.mvc.support.RedirectAttributes
import org.springframework.web.servlet.view.RedirectView
import java.util.concurrent.atomic.AtomicLong


@RequestMapping("/ex")
@RestController
class GreetingController {

    val counter = AtomicLong()

    @GetMapping("/greeting")
    fun greeting(@RequestParam(value = "name", defaultValue = "World") name: String): Greeting =
            Greeting(counter.incrementAndGet(), "Hello, $name")

    @GetMapping("/redirect")
    fun redirectWithUsingRedirectView(attributes: RedirectAttributes): RedirectView =
            RedirectView("redirectedUrl")
}