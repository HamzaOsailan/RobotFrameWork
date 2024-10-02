*** Settings ***
Resource    ../../Resources/Keywords/AppiumKeywords.robot
Resource    ../../Resources/Keywords/Drag.robot
#Resource    ../../Resources/locators/locators.robot
Library     AppiumLibrary

*** Test Cases ***
DragandDropTest
    Open Test Application
    DragAndDrop1
    Close Test Application

