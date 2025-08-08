*** Settings ***
Library             SeleniumLibrary
Resource            ../Resources/automation_testing.robot
Resource            ../Resources/Automation_login_testing.robot
Resource            ../Resources/My_Account_page_locator.robot
Resource            ../Resources/Automation_my_account_page.robot
Resource            ../Resources/shipping_locators.robot
Resource            ../Resources/automation_shipping_testing.robot

Suite Teardown      Close Browser


*** Variables ***
${email}    fs@fmail.com
${pass}     ~!ZAQWERTY)(*&^%)


*** Test Cases ***
Opening My Account Dashboard
    Open Browser To AutomationTesting Page
    Navigate to MY Account
    Entering Email and password    ${email}    ${pass}
    Clicking to LogIn Button
    Sleep    5s
    Verify that locator is present on page    ${SIGN_OUT_BTN}
    Clicking on Locator    ${ORDERS_BTN}
    Clicking On Locator    ${VIEW_BTN}
    Getting Text Of Locator    ${ORDER_NUMBER}    ORDER NUMBER IS
    Getting Text Of Locator    ${ORDER_DATE}    ORDER DATE IS
    Getting Text Of Locator    ${ORDER_STATUS}    ORDER STATUS IS
    Verify that locator is present on page    ${ORDER_NUMBER}
    Capture Page Screenshot    MyAccount{index}.png

Address Functionality
    Open Browser To AutomationTesting Page
    Navigate to MY Account
    Entering Email and password    ${email}    ${pass}
    Clicking to LogIn Button
    Sleep    5s
    Verify that locator is present on page    ${SIGN_OUT_BTN}
    Clicking on Locator    ${ADDRESS_STATUS}
    Verify that locator is present on page    ${BILLING_ADDRESS}
    Verify that locator is present on page    ${SHIPPING_ADDRESS}
    Clicking on Locator    ${SHIPPING_EDIT}
    I Entering Text in Text Field    ${FIRST_NAME}    SURAJ
    I Entering Text in Text Field    ${LAST_NAME}    KUMAR
    I Entering Text in Text Field    ${COMPANY_NAME}    BANKING
    I Entering Text in Text Field    ${STREET_ADDRESS}    MARATHALLI
    I Entering Text in Text Field    ${APARTMENT_ADDRESS}    MANOJ HOUSING
    I Entering Text in Text Field    ${TOWN_ADDRESS}    BENGALURU
    I Entering Text in Text Field    ${POSTCODE}    985643
    I Selecting country name or town name From DropDown    ${COUNTRY_TEXTS}
    ...    ${SHIPPING_COUNTRY}    ${COUNTRY_SEARCH_BOX}    ${SHIPPING_COUNTRY_RESULTS}
    ...    India
    Sleep    2s
    I Selecting country name or town name From DropDown    ${STATE_TEXTS}    ${SHIPPING_STATE}
    ...    ${STATE_SEARCH_BOX}    ${SHIPPING_STATE_RESULTS}
    ...    Sikkim
    Capture Page Screenshot    ADDRESS{index}.png
    Clicking On Locator    ${SAVE_ADDRESS_BUTTON}

Account Details
    Open Browser To AutomationTesting Page
    Navigate to MY Account
    Entering Email and password    ${email}    ${pass}
    Clicking to LogIn Button
    Sleep    5s
    Verify that locator is present on page    ${EDIT_PASSWORDS_LOCATOR}

Account Log Out
    Open Browser To AutomationTesting Page
    Navigate to MY Account
    Entering Email and password    ${email}    ${pass}
    Clicking to LogIn Button
    Sleep    5s
    Verify that locator is present on page    ${EDIT_PASSWORDS_LOCATOR}
    Clicking On Locator    ${SIGN_OUT}
    Sleep    2s
    Verify That Locator Is Present On Page    ${REGISTER_TEXT_LOCATOR}
