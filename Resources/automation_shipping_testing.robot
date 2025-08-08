*** Settings ***
Library     SeleniumLibrary


*** Keywords ***
I Entering Text in Text Field
    [Arguments]    ${locator}    ${text}
    Scroll Element Into View    ${locator}
    Input Text    ${locator}    ${text}

I Selecting country name or town name From DropDown
    [Arguments]    ${country_text_locator}    ${country_dropdown}    ${country_search_box}
    ...    ${country_dropdown_results}    ${cName}
    Scroll Element Into View    ${country_text_locator}
    Click Element    ${country_dropdown}
    Sleep    5s
    Input Text    ${country_search_box}    ${cName}
    Sleep    5s
    @{country}=    Get Webelements    ${country_dropdown_results}
    FOR    ${elem}    IN    @{country}
        ${ele_text}=    Get Text    ${elem}
        IF    '${ele_text}' == '${cName}'    Click Element    ${elem}
    END
    Sleep    5s
