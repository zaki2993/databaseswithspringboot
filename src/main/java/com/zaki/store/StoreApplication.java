package com.zaki.store;

import com.zaki.store.entities.Address;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import com.zaki.store.entities.User;

@SpringBootApplication
public class StoreApplication {

	public static void main(String[] args) {
		// SpringApplication.run(StoreApplication.class, args);
        User user = User.builder()
                .name("zakaryae")
                .password("password")
                .email("email")
                .build();
        Address address = Address.builder()
                .street("street")
                .city("city")
                .state("state")
                .zip("zip")
                .build();
        user.addAddress(address);
        System.out.println(user);
	}

}
