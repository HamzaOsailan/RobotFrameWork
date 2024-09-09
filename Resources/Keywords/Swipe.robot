*** Settings ***
Resource    ../locators/locators.robot
Library     AppiumLibrary

*** Keywords ***

Open Swipe Page
    [Documentation]  Navigate to the Swipe page by clicking the Swipe navigation element.
    Click Element    ${SwipeNav}

Swipe Screen
    [Documentation]  Perform a swipe gesture using touch action by offset.
    # Swipes from (500, 1500) to approximately (500, 300) vertically
    Perform Touch Action
    ...    press=500,1500  # Start coordinates of the swipe
    ...    wait=1000       # Wait time in milliseconds before moving
    ...    move_to=500,300 # End coordinates of the swipe
    ...    release         # Release the swipe action
    ...    wait=1000       # Wait after completing the swipe

Swipe To lastElement
    [Documentation]  Complete swipe action on the page.
    Open Swipe Page
    Swipe Screen
