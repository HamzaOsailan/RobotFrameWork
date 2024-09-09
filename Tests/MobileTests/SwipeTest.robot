*** Settings ***
Resource    ../../Resources/Keywords/AppiumKeywords.robot
Resource    ../../Resources/Keywords/Swipe.robot

*** Test Cases ***
Swipe to an Element
    [Documentation]  Test case to perform a swipe to an element on the page.
    Open Test Application
    Swipe To lastElement
    Close Test Application
