# File: Resources/Keywords/RegisterPage.robot
*** Settings ***
Resource    ../locators/locators.robot
Library     AppiumLibrary

*** Keywords ***
Open Register Page
    [Documentation]  Navigate to the Register page.
    Wait Until Element Is Visible    ${LoginNavs}    15 seconds
    Click Element    ${LoginNavs}
    Wait Until Element Is Visible    ${SignUpNavs}    15 seconds
    Click Element    ${SignUpNavs}


Enter Registration Details
    [Arguments]  ${emailValue}  ${passwordValue}  ${confirm_passwordValue}
    [Documentation]  Enter registration details.
    Wait Until Element Is Visible    ${Email}
    Input Text    ${Email}    ${emailValue}
    Input Text    ${Password}    ${passwordValue}
    Input Text    ${ConfirmPassword}    ${confirm_passwordValue}

Click Register Button
    [Documentation]  Click the sign-up button to submit the registration form.
    Click Element    ${SignUpButton}


Verify Success Message
    [Documentation]  Verify the success message is displayed after register.
    Wait Until Element Is Visible    ${message_success_register}
    Element Text Should Be    ${message_success_register}   You successfully signed up!



Register User
    [Arguments]  ${emailValue}  ${passwordValue}  ${confirm_passwordValue}
    [Documentation]  Complete user registration with the provided details.
    Open Register Page
    Enter Registration Details    ${emailValue}  ${passwordValue}  ${confirm_passwordValue}
    Click Register Button
    Verify Success Message
