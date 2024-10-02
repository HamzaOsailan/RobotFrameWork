*** Settings ***
Library     AppiumLibrary

*** Variables ***
${WebviewNavs}    xpath=//android.widget.TextView[@text="Webview"]

*** Keywords ***
Open Webview Page
    [Documentation]  Navigate to the Login page.
    Wait Until Element Is Visible    ${WebviewNavs}    40 seconds
    Click Element    ${WebviewNavs}

Swipe To Element
    [Arguments]    ${element_locator}
    ${is_element_visible}=    Run Keyword And Return Status    Element Should Be Visible    ${element_locator}
    WHILE    ${is_element_visible} == False
        Swipe Down
        ${is_element_visible}=    Run Keyword And Return Status    Element Should Be Visible    ${element_locator}
    END

Swipe Down
    [Documentation]  Perform swipe down gesture
    [Arguments]    ${start_x}=50    ${start_y}=80    ${end_x}=50    ${end_y}=20    ${duration}=500
    Swipe    ${start_x}    ${start_y}    ${end_x}    ${end_y}    ${duration}
