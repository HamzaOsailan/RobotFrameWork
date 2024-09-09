*** Settings ***
Resource    ../locators/locators.robot
Library     AppiumLibrary

*** Keywords ***
Open Home Page
    [Documentation]  Navigate to the Login page.
    Click Element    ${LoginNavs}

Enter Email

    [Documentation]  Enter the email address in the email input field using send keys.
    Wait Until Element Is Visible    ${email}    15 seconds
    Input Text    ${email}    ${emailValue}

Login User
    [Arguments]  ${email}  ${password}
    [Documentation]  Complete login with the provided credentials.
    Open Login Page
    Enter Email    ${email}
    Enter Password    ${password}
    Click Login Button
