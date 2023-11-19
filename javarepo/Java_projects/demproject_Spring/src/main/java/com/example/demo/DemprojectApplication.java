package com.example.demo;

import org.slf4j.LoggerFactory;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.context.logging.LoggingApplicationListener;

import ch.qos.logback.classic.Logger;

@SpringBootApplication
public class DemprojectApplication {
	// DECLARAMOS EL LOGGER
	public static final Logger LOGGER = (Logger) LoggerFactory.getLogger(DemprojectApplication.class);

	public static void main(String[] args) {
		SpringApplication.run(DemprojectApplication.class, args);
		
		// CREAMOS LOS LOGGERS
		LOGGER.info("Información");
		LOGGER.warn("Aviso");
		LOGGER.error("Error");
		LOGGER.debug("Esto es en debug");
		LOGGER.trace("Trazas");

	}

}
