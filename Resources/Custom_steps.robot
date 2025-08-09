*** Settings ***
Library     SeleniumLibrary


*** Keywords ***
I Clicking to Locator Button
    [Arguments]    ${Locator}
    Scroll Element Into View    ${Locator}
    Click Element    ${Locator}

Verify that locator is present on page
    [Arguments]    ${locator}
    Scroll Element Into View    ${locator}
    Wait Until Element Is Visible    ${locator}
    Element Should Be Visible    ${locator}    Element Not Found
