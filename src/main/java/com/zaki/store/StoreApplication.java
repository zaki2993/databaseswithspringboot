package com.zaki.store;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import com.zaki.store.entities.User;

@SpringBootApplication
public class StoreApplication {

	public static void main(String[] args) {
		// SpringApplication.run(StoreApplication.class, args);
    User u = new User(1L,"zakaryae","zakaryae@gmail","zakaps");
    System.out.println(u.getName());
	}

}
