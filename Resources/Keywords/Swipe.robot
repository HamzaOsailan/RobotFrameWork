*** Settings ***
Library    AppiumLibrary
Resource    ../../Resources/locators/locators.robot

*** Keywords ***

Open Swipe Page
    Click Element    ${SwipeNav}

Swipe Left to Right
    [Arguments]    ${fragment}
    Wait Until Element Is Visible    ${fragment}    timeout=10s
    ${element_size}=    Get Element Size    ${fragment}
    ${element_location}=    Get Element Location    ${fragment}
    ${start_x}=    Evaluate    ${element_location['x']} + (${element_size['width']} * 0.2)
    ${start_y}=    Evaluate    ${element_location['y']} + (${element_size['height']} * 0.1)
    ${end_x}=      Evaluate    ${element_location['x']} + (${element_size['width']} * 0.8)
    ${end_y}=    Evaluate    ${element_location['y']} + (${element_size['height']} * 0.1)
    Swipe   ${start_x}    ${start_y}    ${end_x}    ${end_y}    duration=1500
    Sleep    1

Swipe Right to Left
    [Arguments]    ${fragment}
    Wait Until Element Is Visible    ${fragment}
    ${element_size}=    Get Element Size    ${fragment}
    ${element_location}=    Get Element Location    ${fragment}
    ${start_x}=    Evaluate    ${element_location['x']} + (${element_size['width']} * 1)
    ${start_y}=    Evaluate    ${element_location['y']} + (${element_size['height']} * 0.1)
    ${end_x}=    Evaluate    ${element_location['x']} + (${element_size['width']} * 0.1)
    ${end_y}=    Evaluate    ${element_location['y']} + (${element_size['height']} * 0.1)
    Swipe   ${start_x}    ${start_y}    ${end_x}    ${end_y}    duration=1500
    Sleep    1
