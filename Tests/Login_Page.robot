*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/Automation_login_testing.robot
Resource    ../Resources/automation_testing.robot
Resource    ../Resources/Login_page_locators.robot
Resource    ../Resources/Custom_steps.robot


*** Variables ***
${Email}            fs@fmail.com
${pass}             ~!ZAQWERTY)(*&^%)
${WrongEmail}       f1@gmail.com
@{WrongPassword}    123
${EmptyPassword}    ${EMPTY}
${EmptyUsername}    ${EMPTY}


*** Test Cases ***
Login with Correct User Name and Password
    Open Browser To AutomationTesting Page
    Navigate to MY Account
    Entering Email and password    ${Email}    ${pass}
    I Clicking to Locator Button    ${Login_Btn}
    Sleep    3s

Login with Incorrect User Name and Incorrect Password
    Open Browser To AutomationTesting Page
    Navigate to MY Account
    Entering Email and password    ${WrongEmail}    ${WrongPassword}
    I Clicking to Locator Button    ${Login_Btn}
    Verify That Error is Displayed    ${Error_tag_locator}    Error:
    Sleep    3s

Login with Correct User Name but Empty Password
    Open Browser To AutomationTesting Page
    Navigate to MY Account
    Entering Email and password    ${Email}    ${pass}
    I Clicking to Locator Button    ${Login_Btn}
    Verify That Error is Displayed    ${Empty_pass_locator}    Username is required.
    Sleep    3s

Login with Empty User Name and valid Password
    Open Browser To AutomationTesting Page
    Navigate to MY Account
    Entering Email and password    ${EmptyUsername}    ${EmptyPassword}
    I Clicking to Locator Button    ${Login_Btn}
    Verify That Error is Displayed    ${Empty_pass_locator}    Username is required.
    Sleep    3s

Login with Empty User Name but Empty Password
    Open Browser To AutomationTesting Page
    Navigate to MY Account
    Entering Email and password    ${EmptyUsername}    ${EmptyPassword}
    I Clicking to Locator Button    ${Login_Btn}
    Verify That Error is Displayed    ${Empty_pass_locator}    Username is required.
    Sleep    3s

Login with Random User Name and Random Password
    Open Browser To AutomationTesting Page
    Navigate to MY Account
    Entering Email and password    ${WrongEmail}    ${WrongPassword}
    I Clicking to Locator Button    ${Login_Btn}
    Verify That Error is Displayed    ${Empty_pass_locator}    A user could not be found with this email address.
    Sleep    3s

Login Authentication With Correct Username and Password
    Open Browser To AutomationTesting Page
    Navigate to MY Account
    Entering Email and password    ${Email}    ${pass}
    I Clicking to Locator Button    ${Login_Btn}
    Sleep    3s

Login Authentication
    Open Browser To AutomationTesting Page
    Navigate to MY Account
    Entering Email and password    ${Email}    ${pass}
    I Clicking to Locator Button    ${Login_Btn}
    Clicking on SignOut Button and GoBack
    Sleep    20s
