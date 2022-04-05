package com.shanjupay.operationapp;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;

@SpringBootApplication
@EnableDiscoveryClient
public class OperationAppBootstrap {

    public static void main(String[] args) {
        SpringApplication.run(OperationAppBootstrap.class, args);
    }
}
