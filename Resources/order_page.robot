*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/order_details_locators.robot


*** Variables ***
${actualText}       Hello


*** Keywords ***
Verifying the Title text with actual text
    [Arguments]    ${actualText}
    Wait Until Element Is Visible    ${SUCCESS_MESSAGE}
    ${expectedText}    Get Text    ${SUCCESS_MESSAGE}
    Log    Expected text:${expectedText}    console=true

Verify Payment Method Should Be
    [Arguments]    ${expectText}
    Wait Until Element Is Visible    ${PAYMENT_METHOD}    30s
    ${expectText}    Get Text    ${PAYMENT_METHOD}
    Log    Expected text:${actualText}    console=true
    Log    actual Text:${expectText}    console=true
    Element Text Should Be    ${PAYMENT_METHOD}    ${expectText}    it is not the actual value    True
