package com.app.step_definitions;

import org.openqa.selenium.WebDriver;

import com.app.utilities.Configuration;
import com.app.utilities.Driver;

import cucumber.api.java.en.Given;

public class Test {
	private WebDriver driver = Driver.getDriver();
	@Given("^Run the Application$")
	public void run_the_Application() {
	   driver.get(Configuration.getProperty("url"));
	}
}
