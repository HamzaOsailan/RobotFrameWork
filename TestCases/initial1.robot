*** Settings ***
Library         SeleniumLibrary
Resource        ../Resources/Variables/variables.robot
Resource        ../Resources/Keywords/Register.robot
Resource        ../Resources/Keywords/Delete.robot
Resource    ../interview.robot

Suite Setup     Log     I am in suite setup
Test Setup      Go To    ${url}    ${browser}
Test Teardown   Closing Procedures
Suite Teardown  Log     I am in suite teardown

Force Tags      runAll

*** Test Cases ***
Delete Employees
    [Documentation]    This test case deletes all the employees.
    [Tags]             delete
    Delete Employees

Delete All Employees
    [Documentation]    Deletes all the employees.
    [Tags]             deleteAll
    Delete All Employees

Register Jhon Doe
    [Documentation]    This test case tries to register Jhon Doe.
    [Tags]             JhonDoe
    Register Jhon Doe

Register Jane Doe
    [Documentation]    This test case tries to register Jane Doe.
    [Tags]             register
    Register Jane Doe

Register Jane Employee
    [Documentation]    This test case tries to register Jane Employee.
    [Tags]             register
    Register Jane Employee

Delete Diego
    [Tags]             diego
    Delete Diego
