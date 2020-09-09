Feature: BOT 3594 Automation QA Engineer Interview Task
  @BrowserAutomation
  Scenario: Automation task 1 - Validate Google Search for Clarivate Analytics
    Given I open Chrome Browser
    When  I navigate to google.com
    And search for "Clarivate Analytics"
    Then first search result should be "https://clarivate.com/"