*** Settings ***
Resource    ../../Resources/Keywords/AppiumKeywords.robot
Resource    ../../Resources/Keywords/Login.robot
Library     AppiumLibrary

*** Test Cases ***
Successful Login with Credentials
    [Documentation]  Test successful login with valid credentials.
    Open Test Application
    Login User    hamzaosailan@hotmail.com    Aa12345678
    Close Test Application

Invalid Email
    [Documentation]  Test login with an invalid email format.
    Open Test Application
    Empty Email    ''    Aa12345678
    Close Test Application

Invalid Password
    [Documentation]  Test login with an invalid password.
    Open Test Application
    Empty Password    HamzaOsailan@hotmail.com    ''
    Close Test Application
