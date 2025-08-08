*** Settings ***
Library             SeleniumLibrary
Resource            ../Resources/automation_testing.robot
Resource            ../Resources/Automation_Shop_testing.robot

Suite Teardown      Close Browser


*** Test Cases ***
Shop Filter By Price Functionality
    Open Browser To AutomationTesting Page
    Click On Shop Menu
    Sleep    5s
    ${offset}=    Set Slider To    450
    Set Slider Handle Right To Percentage    ${offset}
    Click On Filter Button

#    Sleep    30s
