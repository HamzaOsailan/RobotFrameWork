*** Settings ***
Library    AppiumLibrary
Library    ocr_library.py
Resource   ../../Resources/Keywords/AppiumKeywords.robot
Resource   ../../Resources/locators/locators.robot

*** Keywords ***
Navigate To Image
    Wait Until Element Is Visible    ${TurnOff}
    Click Element    ${TurnOff}
    Wait Until Element Is Visible    ${albums}
    Click Element    ${albums}
    Wait Until Element Is Visible    ${p}
    Click Element    ${p}
    Wait Until Element Is Visible    ${p1}
    Click Element    ${p1}

Scroll To Element
    [Arguments]    ${locator}
    # Check if the element is initially visible
    ${found}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${locator}
#    Run Keyword If    ${found}    RETURN

    # Try scrolling and checking for the element up to 10 times
    FOR    ${i}    IN RANGE    10
        # Perform the scroll gesture
#        Execute Script    mobile: scrollGesture    {"direction": "down", "percent": 100}
        # Check if the element is visible after scrolling
        ${found}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${locator}
#        Run Keyword If    ${found}    RETURN
    END

    # Fail if the element is still not found after scrolling
    Fail    Element with locator ${locator} not found after scrolling

