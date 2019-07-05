Feature: Validating wishkarma functioalities

  @login
  Scenario: Login test case
    Given user navigates to URL...Login:navigateToURL
    And user login into application...Login:loginIntoApplication

  @scenario
  Scenario Outline: Senrio 1
    Given user navigates to URL...Login:navigateToURL
    And user login into application...Login:loginIntoApplication
    When user click on Account in the menu bar...Index:clickAccountMenu
    And user enter the account name using data (<accountname>)...Index:enterAccountName
    And user clicks on search button...Index:clickSearch_Account
    And user click on account name in the table using data (<accountname>)...Index:clickAccountNameInTable
    And user click on side tab using data (<sidetabname>)...Index:clickSideTab
    And user impersonate the first user...Index:impersonateFirstEmployee
    And user opens new indiviual application form...Employee:selectNewIndividualApplication
    And user fills the application details usind data (<firstname>;<surname>;<maidenname>;<idnumber>;<account>;<costcode>)...Employee:fillForm
    #And user selects the check using data (<check1>)...Checks:selectCheck
    #And user inputs to the check...Checks:input_Check_ITC
    And user clicks on submit...Checks:submitApplicationForm
    And user clicked on latest application tab...Index:clickLatestApplicationTab
    And user verifies the first name and last name in the latest application table using data (<firstname>;<surname>)...Index:validateFirstNameAndLastName
    And user logged out from application...Index:logout_impersonate
    And user enter his generated watermark number and validate...Login:verifyApplicaantWithWatermark
    And user login into application...Login:loginIntoApplication
    And user verifies the first name and last name in the application table using data (<firstname>;<surname>)...Index:validateFirstNameAndLastNameHome

    Examples: 
      | accountname | sidetabname     | firstname | surname | maidenname | idnumber      | check1                   | account   | costcode |
      | cloudseed   | Account User(s) | Sammy     | wish    | karma      | 6612115083087 | TransUnion Credit Report | Cloudseed | @        |

  @register
  Scenario Outline: Registration
    Given user navigates to URL...Login:navigateToURL
    When user clicks on register now link...Register:clickRegisterNow
    And user accepts welcome page terms and conditions...Register:acceptWelcomeTerms
    And user selects the registration type using data (<registrationtype>)...Register:selectRegistrationType
    And user selects industry value using data (<industry>)...Register:selectIndustry
    And user fills form for the registration type using data (<fieldsdata>)...Register:fillForm
    And user selects raido buttons in the form using data (<radiodata>)...Register:selectRadioButtons
    And user clicks on next in capture information page...Register:clickCaptureNext
    And user clicks on finish button...Register:clickFinish
    And user login into application...Login:loginIntoApplication
    And user activates the registered name using data (<fieldsdata>;<people soft number>;<pricing category>)...Index:activateRegistrationName

    Examples: 
      | registrationtype | industry  | fieldsdata        | radiodata         | people soft number | pricing category |
      | Corporate        | Education | Corporate_fields1 | Corporate_radios1 |            2555664 | Category A       |

  @pricing
  Scenario Outline: TC_10_Pricing Categories_Edit
    Given user navigates to URL...Login:navigateToURL
    And user login into application...Login:loginIntoApplication
    And user selects financial dropdown with option using data (<financialOption>)...Index:selectFinancialDropdown
    And user clicks on pricing category on which he wants to edit using data (<categoryname>)...Index:clickCategory
    And user clicks on pricing filter tab using data (<tabname>)...Index:selectPricingFilterTab
    And user edits check pricing details using data (<jsonfilekey1>)...Index:editCheckPricingDetails
    Then user clicks on save button...Index:clickCheckPricingSave

    Examples: 
      | financialOption    | categoryname | tabname       | jsonfilekey1           |
      | Pricing Categories | Category A   | Check Pricing | checkpricing_testdata1 |
      | Pricing Categories | Category B   | Check Pricing | checkpricing_testdata1 |

  @tc11
  Scenario Outline: TC_11_Tools. National Credit Act Dispute Log
    Given user navigates to URL...Login:navigateToURL
    And user login into application...Login:loginIntoApplication
    And user selects Financial dropdown with option using data (<financialOption>)...Index:selectFinancialDropdown
    And user search and exports Financial Invoice report using data (<startdate>;<enddate>;<filename>)...Index:exportFinancialInvoice

    Examples: 
      | financialOption   | startdate  | enddate    | filename          |
      | Financial Invoice | 01/09/2018 | 23/09/2018 | TestForAutomation |
      
  @sa
  Scenario Outline: TC_13_Tool Manage SA Academics_AddInstitue
    Given user navigates to URL...Login:navigateToURL
    And user login into application...Login:loginIntoApplication
    And user selects financial dropdown with option using data (<toolsOption>)...Index:selectToolsDropdown
    And user clicks on add institution button using data (<institution>;<contactname>;<contactnumber>;<contactemail>;<additionalcharge>)...Index:addInstituionForm
    Then user searches and validates the added instituiton using data (<institution>)...Index:searchAndValidateAcademicInstituion

    Examples: 
      | toolsOption  | additionalcharge | institution | contactname | contactnumber | contactemail      |
      | SA Academics |              152 | Ganesh      | test        |     528741963 | test123@gmail.com |

  @sa @delete
  Scenario Outline: TC_13_Tool Manage SA Academics_DeleteInstitue
    Given user navigates to URL...Login:navigateToURL
    And user login into application...Login:loginIntoApplication
    And user selects financial dropdown with option using data (<toolsOption>)...Index:selectToolsDropdown
    And user deleted the institute from table using data (<institution>)...Index:deleteInstitute

    Examples: 
      | toolsOption  | additionalcharge | institution | contactname | contactnumber | contactemail      |
      | SA Academics |              152 | Ganesh      | test        |     528741963 | test123@gmail.com |

  @tabvalidation
  Scenario: Tab Verification
    Given user navigates to URL...Login:navigateToURL
    And user login into application...Login:loginIntoApplication
    And user validates the tab fields in the menu...Index:validateTabFileds



  @tc14
  Scenario Outline: TC_14_Tools. National Credit Act Dispute Log
    Given user navigates to URL...Login:navigateToURL
    And user login into application...Login:loginIntoApplication
    And user selects Tools dropdown with option using data (<toolsOption>)...Index:selectToolsDropdown
    And user fills national credit enquir form using data (<type>;<name>;<idnumber>;<system>;<bureau>;<dateofcreditreport>)...Index:addNationalCreditCardEnquires

    Examples: 
      | toolsOption                     | type                                        | name  | idnumber   | system   | bureau | dateofcreditreport |
      | National Credit Act Dispute Log | Dispute - Details incorrect - Sequestration | test1 | 9494871479 | Refcheck | ITC    | 2018/09/22         |

  @tc15
  Scenario Outline: TC_15_Tools. National Credit Act Dispute Log
    Given user navigates to URL...Login:navigateToURL
    And user login into application...Login:loginIntoApplication
    And user selects Tools dropdown with option using data (<toolsOption>)...Index:selectToolsDropdown
    And user searches the national credit act enquires using data (<startdate>;<enddate>;<status>;<type>)...Index:selectSearchFields_NationalCredit

    Examples: 
      | toolsOption                     | startdate  | enddate    | status  | type |
      | National Credit Act Dispute Log | 20/08/2018 | 23/09/2018 | Pending | All  |

  @tc18
  Scenario Outline: TC_18_Tools. National Credit Act Dispute Log
    Given user navigates to URL...Login:navigateToURL
    And user login into application...Login:loginIntoApplication
    And user selects Sales dropdown with option using data (<salesOption>)...Index:selectSalesDropdown
    And user searches the introducer performance using data (<introducer>;<startdate>;<enddate>;<filter>)...Index:searchInroducerPerformance
    Then user validates the search...Index:validateIntrodcuerPerformanceSearch

    Examples: 
      | salesOption            | introducer  | startdate  | enddate    | filter |
      | Introducer Performance | Grace Peter | 20/09/2018 | 23/09/2018 | Show   |

  @tc19
  Scenario Outline: TC_19_Tools. National Credit Act Dispute Log
    Given user navigates to URL...Login:navigateToURL
    And user login into application...Login:loginIntoApplication
    And user selects Sales dropdown with option using data (<salesOption>)...Index:selectSalesDropdown
    And user searches the Account performance using data (<accountname>;<account>;<user>;<startdate>;<enddate>)...Index:searchAccountPerformance

    Examples: 
      | salesOption         | accountname | account   | user        | startdate  | enddate    |
      | Account Performance | cloudseed   | Cloudseed | Ganesh Test | 23/08/2018 | 23/09/2018 |

  @tc22
  Scenario Outline: TC_22_Reports. Outstanding Applications per Account
    Given user navigates to URL...Login:navigateToURL
    And user login into application...Login:loginIntoApplication
    And user selects Sales dropdown with option using data (<reportsOption>)...Index:selectReportsDropdown
    And user searches the Account performance using data (<accountname>;<account>;<startdate>;<enddate>;<filename>)...Index:outstandingPerformancePerAccount

    Examples: 
      | reportsOption                        | accountname | account   | startdate  | enddate    | filename   |
      | Outstanding Applications per Account | cloudseed   | Cloudseed | 23/08/2018 | 23/09/2018 | smaplefile |

  @tc24
  Scenario Outline: TC_24_Reports. Quarterly NCR Reports
    Given user navigates to URL...Login:navigateToURL
    And user login into application...Login:loginIntoApplication
    And user selects Sales dropdown with option using data (<reportsOption>)...Index:selectReportsDropdown
    And user searches the Quaterly NCR  Reports using data (<startdate>;<enddate>)...Index:quaterlyNCRReport

    Examples: 
      | reportsOption        | startdate  | enddate    |
      | Quarterly NCR Report | 23/09/2018 | 23/10/2018 |

  @tc25
  Scenario Outline: TC_25_Reports. Focus Report
    Given user navigates to URL...Login:navigateToURL
    And user login into application...Login:loginIntoApplication
    And user selects Sales dropdown with option using data (<reportsOption>)...Index:selectReportsDropdown
    And user searches the Focus Reports using data (<startdate>;<enddate>)...Index:focusReport

    Examples: 
      | reportsOption       | startdate  | enddate    |
      | Focus Top 40 Report | 23/09/2018 | 23/10/2018 |

  @tc26
  Scenario Outline: TC_26_Reports. Verification Exception Report
    Given user navigates to URL...Login:navigateToURL
    And user login into application...Login:loginIntoApplication
    And user selects Sales dropdown with option using data (<toolsOption>)...Index:selectToolsDropdown
    And user searches the Manual Batches using data (<startdate>;<enddate>;<supplier>)...Index:systemBatches

    Examples: 
      | toolsOption       | startdate  | enddate    | supplier |
      | View System Batches | 23/09/2018 | 23/10/2018 | All      |
