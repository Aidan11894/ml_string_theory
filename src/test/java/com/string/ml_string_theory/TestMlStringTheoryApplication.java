package com.string.ml_string_theory;

import org.springframework.boot.SpringApplication;

public class TestMlStringTheoryApplication {

	public static void main(String[] args) {
		SpringApplication.from(MlStringTheoryApplication::main).with(TestcontainersConfiguration.class).run(args);
	}

}
