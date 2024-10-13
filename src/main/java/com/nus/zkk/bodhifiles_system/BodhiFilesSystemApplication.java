package com.nus.zkk.bodhifiles_system;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;
import org.springframework.context.annotation.ComponentScan;

@ComponentScan("com.nus.zkk.bodhifiles_system.config")
@SpringBootApplication
public class BodhiFilesSystemApplication {

	public static void main(String[] args) {
		SpringApplication.run(BodhiFilesSystemApplication.class, args);
	}

}
