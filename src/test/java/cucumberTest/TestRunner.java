package cucumberTest;
import org.junit.runner.RunWith;
import cucumber.api.CucumberOptions;
import cucumber.api.junit.Cucumber;

@RunWith(Cucumber.class)
@CucumberOptions(glue="stepdefinition",
				 features="src/test/resources/Feature",
				 tags="@Sample",
				 monochrome=true,
				 plugin = {
					        "pretty", "html:target/cucumber-report/single",
					        "json:target/Reports/cucumber-json.json",
					        "html:target/Reports/cucumber-html.html",
					        "junit:target/Reports/cucumber-xml.xml",
					        "rerun:rerun/failed_scenarios.txt"
					       }
				)
public class TestRunner {

}