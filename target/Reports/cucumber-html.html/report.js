$(document).ready(function() {var formatter = new CucumberHTML.DOMFormatter($('.cucumber-report'));formatter.uri("Sample.feature");
formatter.feature({
  "line": 2,
  "name": "Validating functionalities in a website",
  "description": "",
  "id": "validating-functionalities-in-a-website",
  "keyword": "Feature",
  "tags": [
    {
      "line": 1,
      "name": "@Sample"
    }
  ]
});
formatter.before({
  "duration": 12164928742,
  "status": "passed"
});
formatter.scenario({
  "line": 4,
  "name": "Sample Form Filling",
  "description": "",
  "id": "validating-functionalities-in-a-website;sample-form-filling",
  "type": "scenario",
  "keyword": "Scenario"
});
formatter.step({
  "line": 5,
  "name": "user navigates to webpage",
  "keyword": "Given "
});
formatter.step({
  "line": 6,
  "name": "user enters the message with value \"Hello World\"",
  "keyword": "When "
});
formatter.step({
  "line": 7,
  "name": "user clicks  on show Message button",
  "keyword": "And "
});
formatter.step({
  "line": 8,
  "name": "user entered message should be displayed",
  "keyword": "Then "
});
formatter.match({
  "location": "StepDefinition_FormFilling.user_navigates_to_webpage()"
});
formatter.result({
  "duration": 3730653128,
  "status": "passed"
});
formatter.match({
  "arguments": [
    {
      "val": "Hello World",
      "offset": 36
    }
  ],
  "location": "StepDefinition_FormFilling.user_enters_the_message_with_value(String)"
});
formatter.result({
  "duration": 1026656865,
  "status": "passed"
});
formatter.match({
  "location": "StepDefinition_FormFilling.user_clicks_on_show_Message_button()"
});
formatter.result({
  "duration": 716099808,
  "status": "passed"
});
formatter.match({
  "location": "StepDefinition_FormFilling.user_entered_message_should_be_displayed()"
});
formatter.result({
  "duration": 35111,
  "status": "passed"
});
formatter.after({
  "duration": 4628252330,
  "status": "passed"
});
formatter.scenarioOutline({
  "line": 11,
  "name": "Addition of two numbers",
  "description": "",
  "id": "validating-functionalities-in-a-website;addition-of-two-numbers",
  "type": "scenario_outline",
  "keyword": "Scenario Outline"
});
formatter.step({
  "line": 12,
  "name": "user navigates to webpage",
  "keyword": "Given "
});
formatter.step({
  "line": 13,
  "name": "user enters first number as \u003cdigit1\u003e",
  "keyword": "When "
});
formatter.step({
  "line": 14,
  "name": "user enters second number as \u003cdigit2\u003e",
  "keyword": "And "
});
formatter.step({
  "line": 15,
  "name": "user clicks on button to get the sum of digits",
  "keyword": "Then "
});
formatter.examples({
  "line": 17,
  "name": "",
  "description": "",
  "id": "validating-functionalities-in-a-website;addition-of-two-numbers;",
  "rows": [
    {
      "cells": [
        "digit1",
        "digit2"
      ],
      "line": 18,
      "id": "validating-functionalities-in-a-website;addition-of-two-numbers;;1"
    },
    {
      "cells": [
        "2",
        "3"
      ],
      "line": 19,
      "id": "validating-functionalities-in-a-website;addition-of-two-numbers;;2"
    },
    {
      "cells": [
        "4",
        "7"
      ],
      "line": 20,
      "id": "validating-functionalities-in-a-website;addition-of-two-numbers;;3"
    }
  ],
  "keyword": "Examples"
});
formatter.before({
  "duration": 5032555972,
  "status": "passed"
});
formatter.scenario({
  "line": 19,
  "name": "Addition of two numbers",
  "description": "",
  "id": "validating-functionalities-in-a-website;addition-of-two-numbers;;2",
  "type": "scenario",
  "keyword": "Scenario Outline",
  "tags": [
    {
      "line": 1,
      "name": "@Sample"
    }
  ]
});
formatter.step({
  "line": 12,
  "name": "user navigates to webpage",
  "keyword": "Given "
});
formatter.step({
  "line": 13,
  "name": "user enters first number as 2",
  "matchedColumns": [
    0
  ],
  "keyword": "When "
});
formatter.step({
  "line": 14,
  "name": "user enters second number as 3",
  "matchedColumns": [
    1
  ],
  "keyword": "And "
});
formatter.step({
  "line": 15,
  "name": "user clicks on button to get the sum of digits",
  "keyword": "Then "
});
formatter.match({
  "location": "StepDefinition_FormFilling.user_navigates_to_webpage()"
});
formatter.result({
  "duration": 1958654259,
  "status": "passed"
});
formatter.match({
  "arguments": [
    {
      "val": "2",
      "offset": 28
    }
  ],
  "location": "StepDefinition_FormFilling.user_enters_first_number_as(String)"
});
formatter.result({
  "duration": 490145787,
  "status": "passed"
});
formatter.match({
  "arguments": [
    {
      "val": "3",
      "offset": 29
    }
  ],
  "location": "StepDefinition_FormFilling.user_enters_second_number_as(String)"
});
formatter.result({
  "duration": 550039511,
  "status": "passed"
});
formatter.match({
  "location": "StepDefinition_FormFilling.user_clicks_on_button_to_get_the_sum_of_digits()"
});
formatter.result({
  "duration": 469250694,
  "status": "passed"
});
formatter.after({
  "duration": 1060547501,
  "status": "passed"
});
formatter.before({
  "duration": 4187028278,
  "status": "passed"
});
formatter.scenario({
  "line": 20,
  "name": "Addition of two numbers",
  "description": "",
  "id": "validating-functionalities-in-a-website;addition-of-two-numbers;;3",
  "type": "scenario",
  "keyword": "Scenario Outline",
  "tags": [
    {
      "line": 1,
      "name": "@Sample"
    }
  ]
});
formatter.step({
  "line": 12,
  "name": "user navigates to webpage",
  "keyword": "Given "
});
formatter.step({
  "line": 13,
  "name": "user enters first number as 4",
  "matchedColumns": [
    0
  ],
  "keyword": "When "
});
formatter.step({
  "line": 14,
  "name": "user enters second number as 7",
  "matchedColumns": [
    1
  ],
  "keyword": "And "
});
formatter.step({
  "line": 15,
  "name": "user clicks on button to get the sum of digits",
  "keyword": "Then "
});
formatter.match({
  "location": "StepDefinition_FormFilling.user_navigates_to_webpage()"
});
formatter.result({
  "duration": 2242678006,
  "status": "passed"
});
formatter.match({
  "arguments": [
    {
      "val": "4",
      "offset": 28
    }
  ],
  "location": "StepDefinition_FormFilling.user_enters_first_number_as(String)"
});
formatter.result({
  "duration": 543853294,
  "status": "passed"
});
formatter.match({
  "arguments": [
    {
      "val": "7",
      "offset": 29
    }
  ],
  "location": "StepDefinition_FormFilling.user_enters_second_number_as(String)"
});
formatter.result({
  "duration": 576329710,
  "status": "passed"
});
formatter.match({
  "location": "StepDefinition_FormFilling.user_clicks_on_button_to_get_the_sum_of_digits()"
});
formatter.result({
  "duration": 441910274,
  "status": "passed"
});
formatter.after({
  "duration": 963763144,
  "status": "passed"
});
formatter.before({
  "duration": 4434504502,
  "status": "passed"
});
formatter.scenario({
  "line": 24,
  "name": "Failed test case",
  "description": "",
  "id": "validating-functionalities-in-a-website;failed-test-case",
  "type": "scenario",
  "keyword": "Scenario",
  "tags": [
    {
      "line": 23,
      "name": "@Sample"
    }
  ]
});
formatter.step({
  "line": 25,
  "name": "user navigates to webpage",
  "keyword": "Given "
});
formatter.step({
  "line": 26,
  "name": "user enters credentials",
  "keyword": "When "
});
formatter.step({
  "line": 27,
  "name": "user validates credentials",
  "keyword": "Then "
});
formatter.match({
  "location": "StepDefinition_FormFilling.user_navigates_to_webpage()"
});
formatter.result({
  "duration": 2199666934,
  "status": "passed"
});
formatter.match({
  "location": "StepDefinition_FormFilling.user_enters_credentials()"
});
formatter.result({
  "duration": 2817330,
  "error_message": "java.lang.AssertionError: expected:\u003c1\u003e but was:\u003c2\u003e\r\n\tat org.junit.Assert.fail(Assert.java:88)\r\n\tat org.junit.Assert.failNotEquals(Assert.java:743)\r\n\tat org.junit.Assert.assertEquals(Assert.java:118)\r\n\tat org.junit.Assert.assertEquals(Assert.java:555)\r\n\tat org.junit.Assert.assertEquals(Assert.java:542)\r\n\tat pageClasses.PageObject_FormFilling.failTC(PageObject_FormFilling.java:89)\r\n\tat stepdefinition.StepDefinition_FormFilling.user_enters_credentials(StepDefinition_FormFilling.java:58)\r\n\tat ✽.When user enters credentials(Sample.feature:26)\r\n",
  "status": "failed"
});
formatter.match({
  "location": "StepDefinition_FormFilling.user_validates_credentials()"
});
formatter.result({
  "status": "skipped"
});
formatter.after({
  "duration": 1226520243,
  "status": "passed"
});
});