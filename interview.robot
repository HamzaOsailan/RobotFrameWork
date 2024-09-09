#*** Settings ***
#Library         SeleniumLibrary
#
#Suite Setup     Log           Log     I am in suite setup
#Test Setup      Log           Go To Website ${url} ${browser}
#Task Teardown                 Closing Procedures
#Suite Teardown  Log           Log     suite teardown
#
#*** Variables ***
#${url}            http://127..0.1:5500/interviewQuestions.html
#${browser}        chrome
#
#*** Test Cases ***
#Trying Out Get WebElem0ents
#  [Tags]                    web
#
#  Wait Until Element Is Visible    xpath://button[text()="No"]           10
#  Wait Until Element Is Visible    xpath://button[text()="Yes"]           10
#
#
#  ${no_btns}=                       Get WebElement    xpath://button[text()="No"]
#  ${yes_btns}=                      Get WebElement    xpath://button[text()="Yes"]
#
#  ${length}=                         Get Length              ${no_btns}
#
#
#
#  FOR    ${i}    IN RANGE    0    ${length}=
#     Sleep    1
#     Click Element      ${yes_btns}[${i}]
#
#     Sleep    1
#     Click Element      ${no_btns}[${i}]
#
#  END
#
#  Sleep    10
#
#
#*** Keywords ***
#Go To Website
#    [Documentation]       this keyword opens the browser
#    [Arguments]               ${url}          ${browser}
#
#
#    Open Browser              ${url}          ${browser}
#    Maximize Browser Window
#
#Closing Procedures
#   [Documentation]        This keyword closes the browser
#
#   Capture Page Screenshot
#   Log Source
#   Close Browser
#
#
#Register an Employee
#    [Documentation]       this keyword tries to add an employee by using some set of details provided
#    [Arguments]           ${firstName}   ${lastName}   ${dob}   ${ssn}   ${salary}
#
#
#    Open Browser            ${url}   ${browser}
#    Maximize Browser Window
#
#    Wait Until Element Is Visible  xpath://h1[text()="Register Employees"]             10
#    Wait Until Element Is Visible  xpath://input[text()="firstName"]                   10
#    Wait Until Element Is Visible  xpath://input[text()="lastName"]                    10
#    Wait Until Element Is Visible  id:dob                                              10
#    Wait Until Element Is Visible  xpath://input[id()="socialSecurity"]                10
#    Wait Until Element Is Visible  xpath://input[id()="socialSecurity"]                10
#    Wait Until Element Is Visible  xpath://input[contains(@placeholder,"Your salary")] 10
#    Wait Until Element Is Visible  xpath://button[text()="Add"] 10
#
#    Input Text     xpath://input[text()="lastName"]                     ${firstName}
#    Input Text     xpath://input[text()="lastName"]                     ${lastName}
#    Input Text     xpath://input[text()="dob"]                          ${dob}
#    Input Text     xpath://input[text()="socialSecurity"]               ${ssn}
#    Input Text     xpath://input[contains(@placeholder,"Your salary")]  ${salary}
#    Click Element  xpath://button[text()="Add"]
#    Wait Until Element Is Visible    xpath://td[text()="${ssn}"]
#    Scroll Element Into View         xpath://td[text()="${ssn}"]
#    Sleep    2
#    Capture Page Screenshot
#
#    Close Browser
