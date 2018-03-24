package co.herod.saysparty

import co.herod.spring_kotlin_docker_template.BuildConfig
import org.springframework.boot.SpringApplication
import org.springframework.boot.autoconfigure.SpringBootApplication

@SpringBootApplication
class BackendApplication

fun main(vararg args: String) {
    println("Project name: ${BuildConfig.PROJECT_NAME}")
    println("Project version: ${BuildConfig.PROJECT_VERSION}")
    SpringApplication.run(BackendApplication::class.java, *args)
}
