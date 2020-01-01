package com.dsf.cloud.serverproperties;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.config.server.EnableConfigServer;

@EnableConfigServer
@SpringBootApplication
public class ServerPropertiesApplication {

	public static void main(String[] args) {
		SpringApplication.run(ServerPropertiesApplication.class, args);
	}

}
