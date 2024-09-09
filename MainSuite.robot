*** Settings ***
Resource        Resources/Variables/variables.robot


Suite Setup     Suite Setup
Suite Teardown  Suite Teardown
Test Setup      Test Setup
Test Teardown   Test Teardown
Force Tags      runAll

*** Test Cases ***
Run Mobile Tests
    Run Test Suite    Tests/MobileTests/MobileLoginTest.robot

Run Web Tests
    Run Test Suite    Tests/WebTests/WebEmployeeTest.robot

*** Keywords ***
Suite Setup
    Log    Starting the test suite.

Suite Teardown
    Log    Ending the test suite.

Test Setup
    Go To    ${URL}    ${BROWSER}

Test Teardown
    Close Browser
