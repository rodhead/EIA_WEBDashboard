package org.main.eia.app;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

/**
 * Hello world!
 *
 */
@SpringBootApplication
@ComponentScan("org.main.eia")
@EnableAutoConfiguration
public class EiaAppService 
{
    public static void main( String[] args )
    {
       SpringApplication.run(EiaAppService.class, args);
    }
}
