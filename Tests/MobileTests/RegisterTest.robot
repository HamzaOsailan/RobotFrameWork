# File: Tests/MobileTests/RegisterTest.robot

*** Settings ***
Resource    ../../Resources/Keywords/AppiumKeywords.robot
Resource    ../../Resources/Keywords/Register.robot

*** Test Cases ***
Register a New User
    Open Test Application
    Register User    hamzaosailan@hotmail.com  Aa12345678  Aa12345678
    Close Test Application
