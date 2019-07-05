package stepdefinition;

import org.junit.Assert;

import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import pageClasses.PageObject_FormFilling;

public class StepDefinition_FormFilling {
	
	@Given("^user navigates to webpage$")
	public void user_navigates_to_webpage() throws Throwable {
	    // Write code here that turns the phrase above into concrete actions
	 PageObject_FormFilling.navigateToBrowser();
	}

	@When("^user enters the message with value \"([^\"]*)\"$")
	public void user_enters_the_message_with_value(String arg1) throws Throwable {
	    // Write code here that turns the phrase above into concrete actions
	 PageObject_FormFilling.enterMessage(arg1);
	}

	@When("^user clicks  on show Message button$")
	public void user_clicks_on_show_Message_button() throws Throwable {
	    // Write code here that turns the phrase above into concrete actions
	 PageObject_FormFilling.clickShowMessageButton();
	}

	@Then("^user entered message should be displayed$")
	public void user_entered_message_should_be_displayed() throws Throwable {
	    // Write code here that turns the phrase above into concrete actions
	 
	}
	
	@When("^user enters first number as (\\d+)$")
	public void user_enters_first_number_as(String arg1) throws Throwable {
	    // Write code here that turns the phrase above into concrete actions
	 PageObject_FormFilling.enterFirstNumber(arg1);
	}

	@When("^user enters second number as (\\d+)$")
	public void user_enters_second_number_as(String arg1) throws Throwable {
	    // Write code here that turns the phrase above into concrete actions
	 PageObject_FormFilling.enterSecondNumber(arg1);
	}

	@Then("^user clicks on button to get the sum of digits$")
	public void user_clicks_on_button_to_get_the_sum_of_digits() throws Throwable {
	    // Write code here that turns the phrase above into concrete actions
	 PageObject_FormFilling.cickAddButton();
	}


	@When("^user enters credentials$")
	public void user_enters_credentials() throws Throwable {
	    // Write code here that turns the phrase above into concrete actions
	    PageObject_FormFilling.failTC();
	}

	@Then("^user validates credentials$")
	public void user_validates_credentials() throws Throwable {
	    // Write code here that turns the phrase above into concrete actions
	    
	}


}
