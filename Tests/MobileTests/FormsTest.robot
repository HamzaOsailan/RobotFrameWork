# File: Tests/MobileTests/mobileLoginTest.robot

*** Settings ***
Resource    ../../Resources/Keywords/AppiumKeywords.robot
Resource    ../../Resources/Keywords/Form.robot
Library     AppiumLibrary

*** Test Cases ***
Fill the form
    Open Test Application
    Fill the form
    Close Test Application
