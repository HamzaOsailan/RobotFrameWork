#*** Settings ***
#Library         SeleniumLibrary
#Resource        ../Resources/Variables/variables.robot
#Resource        ../Resources/Keywords/Login.robot
#
#Suite Setup     Log     I am in suite setup
#Test Setup      Go To Website    ${url}    ${browser}
#Test Teardown   Log     I am in task teardown
#Suite Teardown  Log     I am in suite teardown
#
#Force Tags      runAll
#
#*** Test Cases ***
#Delete All Employees
#    [Documentation]    This test case deletes all the employees.
#    [Tags]             deleteAll
#    Delete All Employees
#
#Delete Diego Employee
#    [Documentation]    This test case deletes Diego.
#    [Tags]             diego
#    Delete Diego
