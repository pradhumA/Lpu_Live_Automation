*** Settings ***
Documentation   This file will keep the configuration details

Library     SeleniumLibrary
Library     OperatingSystem

*** Variables ***
${BROWSER}      chrome
${URL}      https://lpulive.lpu.in/

*** Keywords ***
Launch Browser
    Append To Environment Variable    path      ${EXECDIR}${/}driver
    Open Browser        browser=${BROWSER}
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Set Screenshot Directory    ${EXECDIR}${/}screenshot
    Go To    url=${URL}