*** Settings ***
Library     SeleniumLibrary


*** Keywords ***
Scroll Element To Center
    [Arguments]    ${locator}
    ${element}=    Get WebElement    ${locator}
    Log    ${element}    console=true
#    ${element_string}=    Convert To String    ${element.tag_name}
#    Log    ${element_string}    console=true
    Execute JavaScript    arguments[0].scrollIntoView({behavior: "smooth", block: "center"});    ${element}
