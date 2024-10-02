*** Settings ***
Resource    ../locators/locators.robot
Library     AppiumLibrary

*** Keywords ***
Open Forms Page
    [Documentation]  Navigate to the Login page.
    Wait Until Element Is Visible    ${FormsNavs} 15 seconds
    Click Element    ${FormsNavs}

Enter Input field
    [Arguments]  ${InputfieldValue}
    [Documentation]  Enter the email address in the email input field using send keys.
    Wait Until Element Is Visible    ${Inputfield}    15 seconds
    Input Text    ${Inputfield}    ${InputfieldValue}

Click on Switch button
    [Documentation]  Enter the password in the password input field using send keys.
    Wait Until Element Is Visible    ${SwitchButton}    15 seconds
    Click Element    ${SwitchButton}

Select from Dropdown
    [Documentation]  Click the login button to submit the form.
    Wait Until Element Is Visible    ${Dropdown}    15 seconds
    Click Element    ${Dropdown}

Click on Active button
    [Documentation]  Click the login button to submit the form.
    Wait Until Element Is Visible    ${ActiveButton}    15 seconds
    Click Element    ${ActiveButton}

Fill the form
    [Documentation]  Complete login with the provided credentials.
    Open Forms Page
    Enter Input field  Say SomeThing
    Click on Switch button
    Select from Dropdown
    Click on Active button
