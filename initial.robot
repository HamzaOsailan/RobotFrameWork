*** Settings ***
Library         SeleniumLibrary

*** Variables ***
${URL}         http://127.0.0.1:5500/registerWithLoading.html

*** Test Cases ***
Open Browser and Log Message
    Open Browser    ${URL}    chrome

    ${speed}=       Get Selenium Speed    
    Log             ${speed}
    Sleep    5

    Wait Until Element Is Visible  xpath://input[@id="first-name"] 10
    Wait Until Element Is Visible  xpath://input[@id="last-name"]  10

    Input Text      xpath://input[@id="first-name"]    chrome
    Sleep    2

    Input Text      xpath://input[@id="last-name"]     John
    Sleep    5

    Click Button    xpath://button[@id="register"]     Doe
    Close Browser
*** Keywords ***

