*** Settings ***
Documentation   This suite will handle valid credential
...     test - TC_OH_2

Resource    ../Resourse/CommonFunctionality.resource

Test Setup      Launch Browser
Test Teardown   Close Browser

Test Template       Invalid Credential Template

Library     DataDriver      file=../test_data/login_data.xlsx      sheet_name=Invalid Credential

*** Test Cases ***
TC1

TC2

*** Keywords ***
Invalid Credential Template
    [Arguments]     ${username}     ${password}     ${error}
    Input Text    id=inputEmail    ${username}
    Input Password    id=inputPassword    ${password}
    Click Element    xpath=//button[@class='btn btn-next btn-40 d-flex align-items-center pl-4 pr-4 pt-1 ng-tns-c78-0']
    Set Selenium Implicit Wait    30s
    #Click Element    xpath=//button[text()='Got it']
    Page Should Contain    ${error}