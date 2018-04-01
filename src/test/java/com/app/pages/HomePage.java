package com.app.pages;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

import com.app.utilities.Driver;

public class HomePage {
	private WebDriver driver;
	public HomePage() {
		driver = Driver.getDriver();
		PageFactory.initElements(driver, this);
	}
	
	@FindBy(xpath = "//ul[@id = 'main_menu_top']//span[.='Account']")
	public WebElement accountTop;
	
	@FindBy(xpath = "//ul[@id = 'main_menu_top']//a[@class = 'sub menu_login']")
	public WebElement loginTop;
	
	
}
