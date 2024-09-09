*** Settings ***
Library           ocr_library.py

*** Variables ***
${IMAGE_PATH}     C:/Users/USER/PycharmProjects/RobotFrameWork/screenshots/pepsi.jpg
${PDF_PATH}       C:/Users/USER/PycharmProjects/RobotFrameWork/screenshots/Id.pdf

*** Test Cases ***
Extract Text From Image
    ${text}=    Extract Text From Image  ${IMAGE_PATH}
    Log    Extracted Text:->> ${text}

Extract Text From PDF
    ${text}=    Extract Text From PDF    ${PDF_PATH}
    Log    Extracted Text:->> ${text}
