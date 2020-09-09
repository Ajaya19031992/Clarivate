Feature: Outlook Email Compose
  Scenario: Validation of Outlook compose email functionality
    Given I open outlook in Android or iPhone Browser
    When  I navigate to outlook.live.com
    And Click on "+" button
    Then New Message should be displayed
	And To, CC/BCC, Add a Subject should be displayed
	And Message body should be displayed
	And Attachment should be displayed
	And Image Attachment should be displayed
	And Send button should be displayed
	
  Scenario: Validation of Outlook Recipient error functionality
    Given I open outlook in Android or iPhone Browser 
    When  I navigate to outlook.live.com
    And Click on "+" button
	And Click on Send
    Then “The message must have at least one recipient” should be displayed
	
  Scenario: Validation of Outlook Recipient suggestion functionality
    Given I open outlook in Android or iPhone Browser 
    When  I navigate to outlook.live.com
    And Click on "+" button
	And Enter text in TO field or Enter text in CC field or Enter text in BCC field
    Then the suggestion for contacts to whom email is already sent is displayed
	
  Scenario: Validation of Outlook Email delivery functionality
    Given I open outlook in Android or iPhone Browser 
    When  I navigate to outlook.live.com
    And Click on "+" button
	And Enter text in TO field or Enter text in CC field or Enter text in BCC field or Enter text in Message Body
	And Click on Send
    Then the email should be moved to Sent Items
	
  Scenario: Validation of Outlook Email Draft functionality
    Given I open outlook in Android or iPhone Browser 
    When  I navigate to outlook.live.com
    And Click on "+" button
	And Enter text in TO field or Enter text in CC field or Enter text in BCC field or Enter text in Message Body
	And Click on "X"
    Then the email should be moved to Draft
	
  Scenario: Validation of Outlook Email Delete Draft functionality
    Given I open outlook in Android or iPhone Browser 
    When  I navigate to outlook.live.com
	And Open the Draft
	And Click on "Delete Draft"
    Then the Draft should be moved to Deleted Items
	
Feature: Outlook Event
  Scenario: Validation of Outlook Event Save functionality
    Given I open outlook in Android or iPhone Browser 
    When  I navigate to outlook.live.com
	And Click on Calendar
	And Click on "+"
	And Enter Date, Time, Location
	And Click on "Right Mark" or Save button
    Then the Event should be saved
	
 Scenario: Validation of Outlook Event Delete functionality
    Given I open outlook in Android or iPhone Browser 
    When  I navigate to outlook.live.com
	And Click on Setting
	And Click on Time zone
	And Change the Time zone
    Then the updated Time zone should be displayed
	
 Scenario: Validation of Outlook Event Time zone functionality
    Given I open outlook in Android or iPhone Browser 
    When  I navigate to outlook.live.com
	And Click on Calendar
	And Click on "+"
	And Enter Date, Time, Location, Attendees
	And Click on Send symbol/button
    Then the Event should be sent to recipient”
	
Feature: Outlook Contact
  Scenario: Validation of Outlook Contact Add functionality
    Given I open outlook in Android or iPhone Browser 
    When  I navigate to outlook.live.com
	And Click on Contact/People icon
	And Click on "+"
	And Enter Name, Email, Phone, Address
	And Click on Save
    Then the Contact should be saved

  Scenario: Validation of Outlook Contact Edit functionality
    Given I open outlook in Android or iPhone Browser 
    When  I navigate to outlook.live.com
	And Click on Contact/People icon
	And Click on existing contact
	And Click on Edit
	And Update Name, Email, Phone, Address
	And click on Save
    Then the Contact should be saved

  Scenario: Validation of Outlook Contact Search functionality
    Given I open outlook in Android or iPhone Browser 
    When  I navigate to outlook.live.com
	And Click on Contact/People icon
	And Click on Seacrh People
	And Enter Name, Email, Phone, Address in Search field
	And click on Search icon from mobile keypad
    Then the Contact should be displayed