#*** Settings ***
#Resource    ../locators/locators.robot
#Library     AppiumLibrary
#
#*** Keywords ***
#Open Application
#    [Documentation]    Launch Google Lens on the iOS device.
##    Open Application    ${APPIUM_SERVER}    platformName=${PLATFORM_NAME}    deviceName=${DEVICE_NAME}    platformVersion=${PLATFORM_VERSION}    appPackage=${APP_PACKAGE}    appActivity=${APP_ACTIVITY}    automationName=XCUITest
#
#Open Google Lens
#    [Documentation]    Open Google Lens and wait for the home screen to load.
#    Wait Until Element Is Visible    //XCUIElementTypeButton[@name="Google Lens Home"]    10s
#
#Take Photo Or Select From Gallery
#    [Documentation]    Access the camera or gallery to add a photo.
#    Click Element    //XCUIElementTypeButton[@name="Camera"]    # To take a new photo
#    # Or click gallery button to select an existing photo
#    Click Element    //XCUIElementTypeButton[@name="Gallery"]
#    # Select the desired image from gallery
#    Wait Until Element Is Visible    //XCUIElementTypeCell[@name="Your Photo Name"]    10s
#    Click Element    //XCUIElementTypeCell[@name="Your Photo Name"]
#
#Extract Text
#    [Documentation]    Extract text from the selected image using OCR.
#    Wait Until Element Is Visible    //XCUIElementTypeButton[@name="Text"]    10s
#    Click Element    //XCUIElementTypeButton[@name="Text"]
#    ${text} =    Get Text    //XCUIElementTypeStaticText[@name="Extracted Text"]  # Adjust the locator based on Google Lens UI
#
#Validate Extracted Text
#    [Documentation]    Validate the extracted text content.
#    Log    Extracted text: ${text}
#    Should Not Be Empty    ${text}
#
#Close Application
#    [Documentation]    Close Google Lens.
#    Close Application