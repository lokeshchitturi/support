@Sample
Feature: Validating functionalities in a website


Scenario: Sample Form Filling
Given user navigates to webpage
When user enters the message with value "Hello World"
And user clicks  on show Message button 
Then user entered message should be displayed


Scenario Outline: Addition of two numbers
Given user navigates to webpage
When user enters first number as <digit1>
And user enters second number as <digit2>
Then user clicks on button to get the sum of digits

Examples:
|digit1|digit2|
|2	   |3     |
|4	   |7	    |	


@Sample
Scenario: Failed test case
Given user navigates to webpage
When user enters credentials
Then user validates credentials
	 