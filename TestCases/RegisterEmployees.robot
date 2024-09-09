*** Settings ***
Library         SeleniumLibrary
Resource        ../Resources/Variables/variables.robot
Resource        ../Resources/Keywords/Register.robot

Suite Setup     Log     I am in suite setup
Test Setup      Go To Website    ${url}    ${browser}
Test Teardown   Log     I am in task teardown
Suite Teardown  Log     I am in suite teardown

Force Tags      runAll

*** Test Cases ***
Register Jhon Doe
    [Documentation]    This test case registers Jhon Doe.
    [Tags]             JhonDoe
    Register Jhon Doe

Register Jane Doe
    [Documentation]    This test case registers Jane Doe.
    [Tags]             register
    Register Jane Doe

Register Jane Employee
    [Documentation]    This test case registers another Jane Doe.
    [Tags]             register
    Register Jane Employee
