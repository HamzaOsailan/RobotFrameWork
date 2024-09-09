# File: Tests/MobileTests/mobileLoginTest.robot

*** Settings ***
Resource    ../../Resources/Keywords/AppiumKeywords.robot
Resource    ../../Resources/Keywords/Login.robot
Library     AppiumLibrary

*** Test Cases ***
Successful Login with Credentials
    Open Test Application
    Login User   hamzaosailan@hotmail.com    Aa123
    Close Test Application
