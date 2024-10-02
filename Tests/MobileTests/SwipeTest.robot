*** Settings ***
Resource    ../../Resources/Keywords/AppiumKeywords.robot
Resource    ../../Resources/Keywords/Swipe.robot
Library     AppiumLibrary

*** Test Cases ***
Swipe Test Case
    Open Test Application
    open swipe page
    Swipe Left to Right     xpath=//android.widget.TextView[@text="GREAT COMMUNITY"]
#    Swipe Right to Left     xpath=//android.widget.TextView[@text="GREAT COMMUNITY"]
    Close Test Application
