*** Settings ***
Resource    ../locators/locators.robot
Library     AppiumLibrary

*** Keywords ***
Open Login Page
    [Documentation]  Navigate to the Login page.
    Click Element    ${LoginNavs}

Enter Email
    [Arguments]  ${emailValue}
    [Documentation]  Enter the email address in the email input field using send keys.
    Wait Until Element Is Visible    ${email}    15 seconds
    Input Text    ${email}    ${emailValue}

Enter Password
    [Arguments]  ${passwordValue}
    [Documentation]  Enter the password in the password input field using send keys.
    Wait Until Element Is Visible    ${password}    15 seconds
    Input Text    ${password}    ${passwordValue}

Click Login Button
    [Documentation]  Click the login button to submit the form.
    Wait Until Element Is Visible    ${LOGIN_BUTTON}    15 seconds
    Click Element    ${LOGIN_BUTTON}

Login User
    [Arguments]  ${email}  ${password}
    [Documentation]  Complete login with the provided credentials.
    Open Login Page
    Enter Email    ${email}
    Enter Password    ${password}
    Click Login Button
