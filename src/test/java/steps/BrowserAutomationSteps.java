package steps;
import org.apache.commons.io.FileUtils;
import enums.BrowserTypes;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import managers.WebDriverManager;
import pages.GoogleSearchPage;
import pages.SearchResultsPage;

import static org.junit.Assert.assertEquals;

import java.io.File;
import java.io.IOException;

import org.openqa.selenium.OutputType;
import org.openqa.selenium.TakesScreenshot;

/**
 * This is a step definitions class for Browser Related Steps
 *
 * @author Amritansh Diwakar
 */
public class BrowserAutomationSteps extends BaseUtil {
    private final BaseUtil  base;

    public BrowserAutomationSteps(BaseUtil base) {
        this.base = base;
    }
    @Given("I open Chrome Browser")
    public void i_open_Chrome_Browser() {
    	WebDriverManager webDriverManager = new WebDriverManager();
        base.webDriver = webDriverManager.initDriver(BrowserTypes.CHROME);
    	System.out.println("Opened Chrome");
        // Write code here that turns the phrase above into concrete actions
        //throw new io.cucumber.java.PendingException();
    }

    @When("I navigate to google.com")
    public void i_navigate_to_google_com() throws IOException {
    	base.webDriver.get(configProp.getProperty("google_url"));
    	System.out.println("Navigated !!");
    	 File SrcFile = ((TakesScreenshot) base.webDriver).getScreenshotAs(OutputType.FILE);
    	 File DestFile=new File("C:\\Users\\arath\\Desktop\\screenshot.jpeg");
         FileUtils.copyFile(SrcFile, DestFile);
    }

    @When("search for {string}")
    public void search_for(String searchQuery) {
    	GoogleSearchPage googleSearchPage = new GoogleSearchPage(base.webDriver);
        googleSearchPage.searchForKeyword(searchQuery);
    	System.out.println("Search Completed");
    }

    @Then("first search result should be {string}")
    public void first_search_result_should_be(String expectedURL) {
    	SearchResultsPage searchResultsPage = new SearchResultsPage(base.webDriver);
        if(searchResultsPage.getFirstSearchResult().getAttribute("href").equals(expectedURL))
    		System.out.println("Test Passed");
    	else
    		System.out.println("Test Failed");	
        base.webDriver.quit();
    }

  }