package runners;

import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;
import org.junit.runner.RunWith;

import java.io.File;

/**
 * This is a test runner class to control the execution of Cucumber tests
 *
 * @author Ajaya Rath
 */

@RunWith(Cucumber.class)
@CucumberOptions(
        features = {"src/test/features/AutomationTasks.feature"},
        glue = {"steps"},
        stepNotifications = true
        ,strict = true
        ,monochrome = true
        , plugin = {"pretty","html:target/cucumber"}
        ,tags = {"@BrowserAutomation"}
        )
public class TestRunner {

}
