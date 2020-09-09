$(document).ready(function() {var formatter = new CucumberHTML.DOMFormatter($('.cucumber-report'));formatter.uri("file:src/test/features/AutomationTasks.feature");
formatter.feature({
  "name": "BOT 3594 Automation QA Engineer Interview Task",
  "description": "",
  "keyword": "Feature"
});
formatter.scenario({
  "name": "Automation task 1 - Validate Google Search for Clarivate Analytics",
  "description": "",
  "keyword": "Scenario",
  "tags": [
    {
      "name": "@BrowserAutomation"
    }
  ]
});
formatter.step({
  "name": "I open Chrome Browser",
  "keyword": "Given "
});
formatter.match({
  "location": "steps.BrowserAutomationSteps.i_open_Chrome_Browser()"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I navigate to google.com",
  "keyword": "When "
});
formatter.match({
  "location": "steps.BrowserAutomationSteps.i_navigate_to_google_com()"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "search for \"Clarivate Analytics\"",
  "keyword": "And "
});
formatter.match({
  "location": "steps.BrowserAutomationSteps.search_for(java.lang.String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "first search result should be \"https://clarivate.com/\"",
  "keyword": "Then "
});
formatter.match({
  "location": "steps.BrowserAutomationSteps.first_search_result_should_be(java.lang.String)"
});
formatter.result({
  "status": "passed"
});
});