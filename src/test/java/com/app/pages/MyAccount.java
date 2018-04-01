package com.app.pages;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

import com.app.utilities.Driver;

public class MyAccount {
	private WebDriver driver;
	public MyAccount() {
		driver = Driver.getDriver();
		PageFactory.initElements(driver, this);
	}
	
	@FindBy(xpath = "//span[@class = 'maintext']")
	public WebElement mainText;
	
	@FindBy(xpath = "//ul[@class='nav-pills categorymenu']//a[text()[contains(.,'Apparel & accessories')]]")
	public WebElement apparelAndAccessories;
	
	@FindBy(xpath = "//a[text()[contains(.,'T-shirts')]]")
	public WebElement t_Shirts;
    
	@FindBy(xpath = "//a[@title ='Fruit of the Loom T-Shirts 5 Pack - Super Premium']")
	public WebElement fruitOfTheLoom;
	
	@FindBy(xpath = "//a [@class = 'cart']")
	public WebElement addToCart;
	
	@FindBy(xpath = "//span[@class = 'bold totalamout']")
	public WebElement totalAmount;
	
	@FindBy(xpath = "//a[@class = 'btn btn-default mr10  mb10']")
	public WebElement continueShopping;
	
	@FindBy(xpath = "//a[text()[contains(.,'Mens Fine Cotton Giraffe Polo Shirts' )]]")
	public WebElement mensFineCotton;
	
	@FindBy(id = "cart_checkout2")
	public WebElement checkout2;
	
	@FindBy(id = "checkout_btn")
	public WebElement confirmOrder;
	
	@FindBy(id = "cart_quantity11926a4a29af72e9fa902217e00730cfec7")
	public WebElement cartQuantity;
	
	@FindBy(id = "cart_update")
	public WebElement cart_update;
	
	
	
	
	//span[@class = 'procategory'])[1]
	
}
