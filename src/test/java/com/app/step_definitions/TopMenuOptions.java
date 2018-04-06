package com.app.step_definitions;

import static org.testng.Assert.assertEquals;

import java.util.ArrayList;
import java.util.List;

import org.openqa.selenium.WebElement;

import com.app.pages.HomePage;
import com.app.pages.MyAccount;
import com.app.utilities.BrowserUtils;

import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;

public class TopMenuOptions {
	HomePage hp = new HomePage();
		MyAccount ma = new MyAccount();
	
		@When("^I hover over (Home|Apparel & Accessories|MAKEUP|SKINCARE|FRAGRANCE|MEN|HAIR CARE|BOOKS) menu button$")
		public void hover_over_Apparel_Accesories(String menu) {
			switch (menu) {
			case "Home":
				BrowserUtils.hover(ma.Home);
				break;
			case "Apparel & Accessories":
				BrowserUtils.hover(ma.apparelAndAccessories);
				break;
			case "MAKEUP":
				BrowserUtils.hover(ma.makeUp);
				break;
			case "SKINCARE":
				BrowserUtils.hover(ma.skincare);
				break;
			case "FRAGRANCE":
			BrowserUtils.hover(ma.fragrance);
				break;
			case "MEN":
				BrowserUtils.hover(ma.men);
				break;
			case "HAIR CARE":
				BrowserUtils.hover(ma.hairCare);
				break;
			case "BOOKS":
				BrowserUtils.hover(ma.books);
				break;
			}
	
		}

		@Then("^Following menu options shoul be visible for Home menu$")
		public void following_menu_options_shoul_be_visibleHome(List<String> list) {
			List<WebElement> list1 = ma.hopeDropDownMenu;
			List<String> newList = new ArrayList<>();
			for (int i = 0; i < list1.size(); i++) {
				if (!(list1.get(i).getText().isEmpty())) {
					System.out.println(list1.get(i).getText());
					list1.remove(i);
					newList.add(list1.get(i).getText().trim());
				}
			}
			assertEquals(newList, list);
		}
	
		@Then("^Following menu options shoul be visible for (Apparel & Accessories|MAKEUP|SKINCARE|FRAGRANCE|MEN|HAIR CARE|BOOKS):$")
		public void following_menu_options_shoul_be_visible(String menu, List<String> menuList) {
			List<WebElement> menuOptions = ma.menuOptions(menu);
			List<String> topMenuOptionsString = BrowserUtils.getElementsText(menuOptions);
			assertEquals(topMenuOptionsString.size(), menuList.size(), "Number of expected menu options did not match");
			for (int i = 0; i < menuList.size(); i++) {
				assertEquals(topMenuOptionsString.get(i).trim(), menuList.get(i));
		}
		}
}
