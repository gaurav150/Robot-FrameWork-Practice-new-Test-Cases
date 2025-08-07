*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/Login_page_locators.robot


*** Keywords ***
Navigate to MY Account
    Scroll Element Into View    ${My_ACCOUNT}
    Wait Until Element Is Visible    ${My_ACCOUNT}    30
    Click Element    ${My_ACCOUNT}

Entering Email and password
    [Arguments]    ${email}    ${passw}
    Scroll Element Into View    ${Login_User_Name}
    Wait Until Element Is Visible    ${Login_User_Name}
    Input Text    ${Login_User_Name}    ${email}
    Scroll Element Into View    ${Password}
    Wait Until Element Is Visible    ${Password}
    Input Password    ${Password}    ${passw}

Clicking to LogIn Button
    Scroll Element Into View    ${Login_Btn}
    Wait Until Element Is Visible    ${Login_Btn}    30
    Click Element    ${Login_Btn}

Verify That Error is Displayed
    [Arguments]    ${locator}    ${value}
    Scroll Element Into View    ${locator}
    Wait Until Element Is Visible    ${locator}
    ${msg}    Get Text    ${locator}
    Element Should Contain    ${locator}    ${value}
    Log    Actual:${msg}    console=true

Clicking on SignOut Button and GoBack
    Scroll Element Into View    ${Sign_out_locator}
    Wait Until Element Is Visible    ${Sign_out_locator}
    ${first}    Get Text    ${DASHBOARD_LOCATOR}
    Click Element    ${Sign_out_locator}
    Sleep    1s
    Go Back
    ${last}    Get Text    ${LOGIN_TEXT_LOCATOR}
    Log    First: ${first}    console=true
    Log    Second: ${last}    console=true
    Should Not Be Equal As Strings    ${first}    ${last}

Verify that we are on page
    [Arguments]    ${locator}    ${msg}
    Get Title
