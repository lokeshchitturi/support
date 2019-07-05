package stepdefinition;

import java.io.IOException;
import java.lang.reflect.Method;

import org.testng.ITestResult;
import org.testng.annotations.AfterMethod;
import org.testng.annotations.BeforeMethod;

import com.aventstack.extentreports.Status;

import cucumber.api.Scenario;
import cucumber.api.java.After;
import cucumber.api.java.Before;
import utils.InstanceFactory;
import utils.WebDriverUtils;

public class Hook extends WebDriverUtils{

	
	@Before
	public void before(Scenario scenario) throws Exception
	{
		try {
			extent=InstanceFactory.getExtentReportInstance();
			prop=InstanceFactory.getPropertyReaderInstance();
			
			test=extent.createTest(scenario.getName());
			
			WebDriverUtils.openBrowser();
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			throw e;
		}
	}
	
	@After
	public void after(Scenario scenario)
	{
		if(scenario.isFailed())
		{
			try {
				logStatus(Status.FAIL, "Test Scenario Failed");
			} catch (IOException e) {
				// TODO Auto-generated catch block
			
			}
		}
		extent.flush();
		driver.close();
		driver.quit();
	}
	
	@BeforeMethod
	public void testngSetup(Method method) throws Exception
	{
		try {
			extent=InstanceFactory.getExtentReportInstance();
			prop=InstanceFactory.getPropertyReaderInstance();
			
			test=extent.createTest(method.getName());
			
			WebDriverUtils.openBrowser();
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			throw e;
		}
	
	}
	
	@AfterMethod
	public void testngClean(ITestResult result)
	{
		if(result.getStatus()==0)
		{
			try {
				logStatus(Status.FAIL, "Test Scenario Failed");
			} catch (IOException e) {
				// TODO Auto-generated catch block
			
			}
		}
		extent.flush();
		driver.close();
		driver.quit();
	
	}
}
 	 