*** Settings ***
Library    AppiumLibrary
Library    ocr_library.py
Resource   ../../Resources/Keywords/AppiumKeywords.robot
Resource   ../../Resources/locators/locators.robot

*** Test Cases ***
Login and Verify Item Text Using OCR
    Open Test Application
    Wait Until Element Is Visible    ${WebviewNavs}  20
    Click Element    ${WebviewNavs}

    Wait Until Element Is Visible    ${search}
    Input Text    ${search}    text
    Wait Until Element Is Visible    ${firstItem}
    Click Element    ${firstItem}
    Wait Until Element Is Visible    ${ThePhoto}
    Click Element    ${ThePhoto}
    # Extract text from the item image using OCR
    Wait Until Element Is Visible    ${OCR_Image}
    Extract Text From Item Image    ${OCR_Image}
    Close Test Application

*** Keywords ***
Extract Text From Item Image
    [Arguments]    ${locator}
    # Retry mechanism to handle StaleElementReferenceException
    ${element}=    Run Keyword And Ignore Error    Get WebElement    ${locator}
    ${attempts}=    Set Variable    0

    WHILE    ${element} == None and ${attempts} < 3
        Log    Element is stale, retrying...
        Sleep    1s
        ${element}=    Run Keyword And Ignore Error    Get WebElement    ${locator}
        ${attempts}=    Evaluate    ${attempts} + 1
    END

    Run Keyword If    ${element} == None    Fail    Unable to locate the element after multiple attempts.

    ${extracted_text}=    Extract Text From Element    ${element}
    Log    Extracted Text: ${extracted_text}
    Should Contain    ${extracted_text}    SAUCE LAB
