*** Settings ***
Resource    ../../Resources/Keywords/AppiumKeywords.robot
Resource    ../../Resources/Keywords/Webview.robot

*** Test Cases ***
Swipe To Element Test
    Open Test Application
    Open Webview Page
    Swipe To Element    xpath=//android.view.View[@text="Getting Started"]
    Close Test Application
