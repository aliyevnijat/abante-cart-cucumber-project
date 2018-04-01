package com.app.step_definitions;

import static org.testng.Assert.assertEquals;

import java.util.concurrent.TimeUnit;

import org.openqa.selenium.WebDriver;

import com.app.pages.HomePage;
import com.app.pages.LoginPage;
import com.app.pages.MyAccount;
import com.app.utilities.BrowserUtils;
import com.app.utilities.Configuration;
import com.app.utilities.Driver;

import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;

public class SmokeTest1 {
	private WebDriver driver = Driver.getDriver();
	HomePage hp = new HomePage();
	LoginPage lp = new LoginPage();
	MyAccount ma = new MyAccount();
	
	@Given("^I logged into AbanteCart Website$")
	public void i_logged_into_AbanteCart_Website() {
		driver.manage().timeouts().implicitlyWait(5, TimeUnit.SECONDS);
	    driver.get(Configuration.getProperty("url"));
	}

	@Then("^I hover over Account and click on Login$")
	public void i_hover_over_Account_and_click_on_Login() {
	    BrowserUtils.hover(hp.accountTop);
	   // hp.loginTop.click();
	}

	@Then("^I Enter Login name \"([^\"]*)\" and password \"([^\"]*)\" and verify main text equals \"([^\"]*)\"$")
	public void i_Enter_Login_name_and_password_and_verify_main_text_equals(String loginName, String password, String maintext) {
	    lp.loginName.sendKeys(loginName);
	    lp.password.sendKeys(password);
	    lp.loginButton.click();
	    assertEquals(ma.mainText.getText(), maintext, "actual is " + ma.mainText.getText());
	}

	@Then("^I HoverOver Apparel & accessories and click T-shirts and verify main text equals  \"([^\"]*)\"$")
	public void i_HoverOver_Apparel_accessories_and_click_T_shirts_and_verify_main_text_equals(String mainText) {
	    BrowserUtils.hover(ma.apparelAndAccessories);
	    ma.t_Shirts.click();
	    assertEquals(ma.mainText.getText(), mainText, "actual is " + ma.mainText.getText() );
	}

	@Then("^I click on  Fruit of the Loom T-Shirts 5 Pack - Super Premium and add to card$")
	public void i_click_on_Fruit_of_the_Loom_T_Shirts_Pack_Super_Premium_and_add_to_card() {
	   ma.fruitOfTheLoom.click();
	   ma.addToCart.click();
	   if(!(ma.cartQuantity.getAttribute("value").equals("1"))) {
		   ma.cartQuantity.clear();
		   ma.cartQuantity.sendKeys("1");
		   ma.cart_update.click();
	   }
	}
	
	@Then("^Verify that displayed total price equals \"([^\"]*)\"$")
	public void verify_that_displayed_total_price_equals(double expectedTotal) {
		double actualTotal = BrowserUtils.StringToDouble(ma.totalAmount.getText());
		   assertEquals(actualTotal, expectedTotal, "actual total is " + actualTotal);
	}
	
	@Then("^Continue shopping$")
	public void continue_shopping() {
	    ma.continueShopping.click();
	}

	@Then("^I click on Mens Fine Cotton Giraffe Polo Shirts and add to card$")
	public void i_click_on_Mens_Fine_Cotton_Giraffe_Polo_Shirts_and_add_to_card() {
		ma.mensFineCotton.click();
		ma.addToCart.click();
	}

	@Then("^Click checkout and confirm order and verify main text equals \"([^\"]*)\"$")
	public void click_checkout_and_confirm_order_and_verify_main_text_equals(String mainText) {
	   ma.checkout2.click();
	   ma.confirmOrder.click();
	   BrowserUtils.waitFor(3);
	   assertEquals(ma.mainText.getText(), mainText);
	  
	}
}
