*** Settings ***
Library     SeleniumLibrary
Library     Process
Library     OperatingSystem
# Library    ../Resources/SetupDriver.py    WITH NAME    SetupDriver
Resource    ../Resources/billing_details_locators.robot


*** Keywords ***
Entering UserFirstName and LastName
    [Arguments]    ${userName}    ${Name}
    Wait Until Element Is Visible    ${FIRST_NAME}    30
#    Scroll Element Into View    ${FIRST_NAME}
    Input Text    ${FIRST_NAME}    ${userName}
    Sleep    3
#    Set Focus To Element    ${LAST_NAME}
    Wait Until Element Is Visible    ${LAST_NAME}
    Input Text    ${LAST_NAME}    ${Name}

Entering Company Name
    [Arguments]    ${cName}
    Scroll Element Into View    ${COMPANY_NAME}
    Wait Until Element Is Visible    ${COMPANY_NAME}    30
    Input Text    ${COMPANY_NAME}    ${cName}

Entering Email Address
    [Arguments]    ${email}
    Scroll Element Into View    ${EMAIL_ADDRESS}
    Wait Until Element Is Visible    ${EMAIL_ADDRESS}    30
    Input Text    ${EMAIL_ADDRESS}    ${email}

Entering Contact Number
    [Arguments]    ${phoneNumber}
    Wait Until Element Is Visible    ${PHONE}    30
    Scroll Element Into View    ${PHONE}
    Input Text    ${PHONE}    ${phoneNumber}

Select Country From Dropdown
    [Arguments]    ${cName}
    Scroll Element Into View    ${APARTMENT_ADDRESS}
    Click Element    ${COUNTRY_DROP_DOWN}
    Sleep    5s
    Input Text    ${COUNTRY_SEARCH_BOX}    ${cName}
    Sleep    10s
    @{country}=    Get Webelements    ${COUNTRY_DROPDOWN_RESULTS}
    FOR    ${elem}    IN    @{country}
        ${ele_text}=    Get Text    ${elem}
        IF    '${ele_text}' == '${cName}'    Click Element    ${elem}
    END
    Sleep    10s
#    Set Focus To Element    ${COUNTRY_NAME_SELECTION}
##    Scroll Element To Center    ${COUNTRY_NAME_SELECTION}
#    Select From List By Value    ${COUNTRY_NAME_SELECTION}    ${countryName}

Adding Address Details
    [Arguments]    ${firstLine}    ${secondLine}    ${cityName}
    Scroll Element Into View    ${STREET_ADDRESS}
    Input Text    ${STREET_ADDRESS}    ${firstLine}
    Scroll Element Into View    ${APARTMENT_ADDRESS}
    Input Text    ${APARTMENT_ADDRESS}    ${secondLine}
    Scroll Element Into View    ${TOWN_CITY}
    Input Text    ${TOWN_CITY}    ${cityName}

Select State name From the List
    [Arguments]    ${state}
    Scroll Element Into View    ${ADDITIONAL_INFORMATION}
    Click Element    ${STATE_BOX}
    Sleep    3s
    Input Text    ${STATE_SEARCH_BOX}    ${state}
    Sleep    3s
    @{states}=    Get Webelements    ${COUNTRY_DROPDOWN_RESULTS}
    FOR    ${elem}    IN    @{states}
        ${ele_text}=    Get Text    ${elem}
        IF    '${ele_text}' == '${state}'    Click Element    ${elem}
    END
    Sleep    10s

#    Select From List By Value    ${STATE_NAME}    ${state}

Entering Pincode
    [Arguments]    ${pincode}
    Scroll Element Into View    ${POSTCODE}
    Input Text    ${POSTCODE}    ${pincode}

Click On Create Account CheckBox
    Scroll Element Into View    ${CHECKBOX}
    Click Element    ${CHECKBOX}

Adding Password to the field
    [Arguments]    ${password}
    Scroll Element Into View    ${ACCOUNT_PASSWORD}
    Wait Until Element Is Visible    ${ACCOUNT_PASSWORD}
    Input Password    ${ACCOUNT_PASSWORD}    ${password}

Clicking on PaymentMethod
    [Arguments]    ${paymentType}
    Scroll Element Into View    ${PLACE_ORDER}
    @{Method_of_payments}=    Get Webelements    ${PAYMENT_METHOD}
#    Log    These are data:@{Method_of_payments}    console=true
    FOR    ${elem}    IN    @{Method_of_payments}
        ${ele_text}=    Get Text    ${elem}
        Log    Each IterationData:${ele_text}    console=true
        IF    $paymentType in $ele_text
            Click Element    ${elem}
            Log    Element Clicked:${ele_text}    console=true
            BREAK
        END
    END

Placing The Order
    Scroll Element Into View    ${PLACE_ORDER}
    Wait Until Element Is Visible    ${PLACE_ORDER}    30s
    Sleep    5s
    Click Element    ${PLACE_ORDER}
