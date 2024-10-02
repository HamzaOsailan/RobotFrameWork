*** Settings ***
Library    ../../Resources/Keywords/ocr_library1  # Updated import statement

*** Variables ***
${IMAGE_PATH}      Audi.jpg

*** Test Cases ***
Extract Text From Image
    ${result}=    Call Function
    Log    Extracted text: ${result}  # Log the result for visibility

*** Keywords ***
Call Function
    ${result}=    Evaluate    ocr_library1.OcrLibrary.extract_all_text(${IMAGE_PATH})
    [Return]    ${result}  # Return the result from the keyword
