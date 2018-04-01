package com.app.pages;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

import com.app.utilities.Driver;

public class LoginPage {
	private WebDriver driver;
	public LoginPage() {
		driver = Driver.getDriver();
		PageFactory.initElements(driver, this);
	}
	
	@FindBy(id = "loginFrm_loginname")
	public WebElement loginName;
	
	@FindBy(id = "loginFrm_password")
	public WebElement password;
	
	@FindBy(xpath = "//button[@title = 'Login']")
	public WebElement loginButton;
	
	
	
	
	
	
}
