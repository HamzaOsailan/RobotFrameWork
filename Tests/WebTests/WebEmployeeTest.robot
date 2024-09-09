#*** Settings ***
#Library      SeleniumLibrary
#Resource     ../../Resources/Variables/variables.robot
#Resource     ../../Resources/Keywords/Register.robot
#Resource     ../../Resources/Keywords/Delete.robot
#
#*** Test Cases ***
#Delete Employees
#    [Documentation]    This test case deletes all the employees.
#    [Tags]             delete
#    Delete Employees
#
#Register Jhon Doe
#    [Documentation]    This test case tries to register Jhon Doe.
#    [Tags]             JhonDoe
#    Register Jhon Doe
