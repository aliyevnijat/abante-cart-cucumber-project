package com.app.pages;

import java.util.List;

import org.openqa.selenium.By;
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

	@FindBy(xpath = "//ul[@class='nav-pills categorymenu']//a[text()[contains(.,'Makeup')]]")
	public WebElement makeUp;

	@FindBy(xpath = "//ul[@class='nav-pills categorymenu']//a[text()[contains(.,'Skincare')]]")
	public WebElement skincare;

	@FindBy(xpath = "//ul[@class='nav-pills categorymenu']//a[text()[contains(.,'Fragrance')]]")
	public WebElement fragrance;

	@FindBy(xpath = "(//ul[@class='nav-pills categorymenu']//a[text()[contains(.,'Men')]])[2]")
	public WebElement men;

	@FindBy(xpath = "//ul[@class='nav-pills categorymenu']//a[text()[contains(.,'Hair Care')]]")
	public WebElement hairCare;

	@FindBy(xpath = "//ul[@class='nav-pills categorymenu']//a[text()[contains(.,'Books')]]")
	public WebElement books;

	@FindBy(xpath = "//a[text()[contains(.,'T-shirts')]]")
	public WebElement t_Shirts;

	@FindBy(xpath = "//ul[@id='main_menu']//li")
	public List<WebElement> hopeDropDownMenu;

	@FindBy(xpath = "//a[@class='active menu_home']")
	public WebElement Home;

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

	public List<WebElement> menuOptions(String menuName) {
		String xpath = "";
		if (menuName.equals("Apparel & Accessories")) {
			xpath = "(//ul[@class='nav-pills categorymenu']//div[@class='subcategories']//ul)[1]//li";
		}
		if (menuName.equals("MAKEUP")) {
			xpath = "(//ul[@class='nav-pills categorymenu']//div[@class='subcategories']//ul)[3]//li";
		}
		if (menuName.equals("SKINCARE")) {
			xpath = "//a[contains(text(),'Sun')]/../..//li//a";
		}
		if (menuName.equals("FRAGRANCE")) {
			xpath = "(//ul[@class='nav-pills categorymenu']//div[@class='subcategories']//ul)[7]//li";
		}
		if (menuName.equals("MEN")) {
			xpath = "(//ul[@class='nav-pills categorymenu']//div[@class='subcategories']//ul)[9]//li";
		}
		if (menuName.equals("HAIR CARE")) {
			xpath = "(//ul[@class='nav-pills categorymenu']//div[@class='subcategories']//ul)[11]//li";
		}
		if (menuName.equals("BOOKS")) {
			xpath = "(//ul[@class='nav-pills categorymenu']//div[@class='subcategories']//ul)[13]//li";
		}
		return driver.findElements(By.xpath(xpath));
	}

}
