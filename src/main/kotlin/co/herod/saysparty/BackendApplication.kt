package co.herod.saysparty

import org.springframework.boot.SpringApplication
import org.springframework.boot.autoconfigure.SpringBootApplication

@SpringBootApplication
class BackendApplication

fun main(vararg args: String) {
    SpringApplication.run(BackendApplication::class.java, *args)
}
