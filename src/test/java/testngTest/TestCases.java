package testngTest;

import org.testng.annotations.Test;

import pageClasses.PageObject_FormFilling;
import stepdefinition.Hook;

public class TestCases extends Hook{

	
	@Test
	public void Sample_Form_Filling() throws Exception
	{
		PageObject_FormFilling.navigateToBrowser();
		 PageObject_FormFilling.enterMessage("Test");
		 PageObject_FormFilling.clickShowMessageButton();
		 
		
	}
	
	
	@Test
	public void Addition_Of_Two_Numbers() throws Exception
	{
		PageObject_FormFilling.navigateToBrowser();
		PageObject_FormFilling.enterFirstNumber("4");
		PageObject_FormFilling.enterSecondNumber("6");
		PageObject_FormFilling.cickAddButton();
	}
	
	@Test
	public void Failed_Test_Case() throws Exception
	{
		PageObject_FormFilling.navigateToBrowser();
		PageObject_FormFilling.failTC();
	}
}
