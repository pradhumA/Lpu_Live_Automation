*** Settings ***
Library     SeleniumLibrary
Library     OperatingSystem

*** Test Cases ***
TC1
    Append To Environment Variable    path      C:\\Users\\Dell\\Downloads\\Internship\\automation\\Lpu_Live_Automation\\driver
    Open Browser    url=https://lpulive.lpu.in/     browser=chrome
    Input Text    id=inputEmail    11815178
    Input Password    id=inputPassword    Prem@1998
    Click Element    xpath=//button[@class='btn btn-next btn-40 d-flex align-items-center pl-4 pr-4 pt-1 ng-tns-c78-0']
    Set Selenium Implicit Wait    30s
    Click Element    xpath=//button[text()='Got it']
    Input Text    id=searchUsers    11805382
    Click Element    xpath=//p[text()='Pradhum Kumar Mandal : 11815178 (me)']
    Click Element    id=chat-input
    Input Text    id=chat-input    hi
#    Press Key    id=chat-input    ENTER
    #Set Selenium Implicit Wait    10s
    #Click Element    xpath=//button[@class='emoji-trigger emoji-btn send-message ng-tns-c154-4 ng-star-inserted']
    #Press Key    None    ENTER
    #Press Keys      xpath=//button[@class='emoji-trigger emoji-btn send-message ng-tns-c155-5 ng-star-inserted']      RETURN