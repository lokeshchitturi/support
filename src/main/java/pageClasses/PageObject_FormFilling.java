package pageClasses;

import java.io.IOException;

import org.junit.Assert;

import com.aventstack.extentreports.Status;

import utils.WebDriverUtils;

public class PageObject_FormFilling extends WebDriverUtils {

	private static String message_textbox = "id__user-message";
	private static String showMessage_button = "xpath__//button[text()='Show Message']";
	private static String addButton_button = "xpath__//button[text()='Get Total']";

	private static String number1_textbox = "id__sum1";
	private static String number2_textbox = "id__sum2";

	public static void navigateToBrowser() throws Exception {
		try {
			driver.get(prop.getProperty("url"));
			logStatus(Status.PASS, "User navigates to URL");
		} catch (Exception e) {
			// TODO: handle exception
			logStatus(Status.FAIL, "User unable to navigate to URL");
			throw e;
		}
	}

	public static void enterMessage(String message) throws Exception {
		try {
			getWebElement(message_textbox).sendKeys(message);
			logStatus(Status.PASS, "user enters the message " + message + " in textbox");
		} catch (Exception e) {
			// TODO: handle exception
			logStatus(Status.FAIL, "Unable to enter the message  in textbox");
			throw e;

		}
	}

	public static void clickShowMessageButton() throws Exception {
		try {
			getWebElement(showMessage_button).click();
			logStatus(Status.PASS, "Clicked on show message button");
		} catch (Exception e) {
			// TODO: handle exception
			logStatus(Status.FAIL, "Unable to Click on show message button");
			throw e;
		}
	}

	public static void enterFirstNumber(String number) throws Exception {
		try {
			getWebElement(number1_textbox).sendKeys(number);
			logStatus(Status.PASS, "user enter first number " + number);
		} catch (Exception e) {
			// TODO: handle exception
			logStatus(Status.FAIL, "user unable to enter first number " + number);
			throw e;
		}
	}

	public static void enterSecondNumber(String number) throws Exception {
		try {
			getWebElement(number2_textbox).sendKeys(number);
			logStatus(Status.PASS, "user enter second number " + number);
		} catch (Exception e) {
			// TODO: handle exception
			logStatus(Status.FAIL, "user unable to enter second number " + number);
			throw e;
		}
	}

	public static void cickAddButton() throws Exception {
		try {
			getWebElement(addButton_button).click();
			logStatus(Status.PASS, "clicked on add button");
		} catch (Exception e) {
			// TODO: handle exception
			logStatus(Status.FAIL, "unable to click on add button");
			throw e;
		}
	}

	public static void failTC() throws Exception {
		try {
			Assert.assertEquals(1, 2);
		} catch (Exception e) {
			// TODO: handle exception
			logStatus(Status.FAIL, "Fail test case");
			throw e;
		}
	}
}
