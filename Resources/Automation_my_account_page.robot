*** Settings ***
Library     SeleniumLibrary
# Resource    ../Resources/Login_page_locators.robot


*** Keywords ***
Verify that locator is present on page
    [Arguments]    ${locator}
    Scroll Element Into View    ${locator}
    Wait Until Element Is Visible    ${locator}
    Element Should Be Visible    ${locator}    Element Not Found

Clicking on Locator
    [Arguments]    ${locator}
    Scroll Element Into View    ${locator}
    Wait Until Element Is Visible    ${locator}
    Click Element    ${locator}

Getting Text Of Locator
    [Arguments]    ${locator}    ${text}=${EMPTY}
    Scroll Element Into View    ${locator}
    Wait Until Element Is Visible    ${locator}
    ${x}=    Get Text    ${locator}
    Log    ${text}:${x}    console=true
