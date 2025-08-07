*** Settings ***
Library     SeleniumLibrary
Library     Process
Library     OperatingSystem
# Library    ../Resources/SetupDriver.py    WITH NAME    SetupDriver
Resource    ../Resources/home_locators.robot
Resource    ../Resources/shop_page_locators.robot


*** Variables ***
${BROWSER}      chrome
${URL}          https://practice.automationtesting.in/


*** Keywords ***
# Setup ChromeDriver
#    Run Process    python3    setup_driver.py

# Setup All Browsers
#    Evaluate    SetupDriver.setup_all_drivers()    modules=SetupDriver

Open Browser To AutomationTesting Page
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window


Click On Shop Menu
    Wait Until Element Is Visible    ${SHOP_MENU}    5
    Click Element    ${SHOP_MENU}

Click on Home menu button
    Wait Until Element Is Visible    ${HOME_MENU}    10
    Click Element    ${HOME_MENU}

Scrolling to new arrivals
    ${new_arrivals_text}    Get WebElement    ${NEW_ARRIVALS}
    Scroll Element Into View    ${new_arrivals_text}
    Wait Until Element Is Visible    ${new_arrivals_text}    30    element not visible after 30 seconds

Verify the Home page Three Arrivals are present
    ${arrivals}    Get WebElements    ${THREE_ARRIVALS}
    Length Should Be    ${arrivals}    3

Click first arrival
    Scroll Element Into View    ${FIRST_ARRIVAL}
    Wait Until Element Is Visible    ${FIRST_ARRIVAL}    10
    Click Element    ${FIRST_ARRIVAL}

Verify it is navigating to next page
    Element Should Be Visible    ${NEXT_PAGE_PATH}

Verify it contains add to card button
    Page Should Contain Element
    ...    xpath=//button[contains(@class, 'add_to_cart_button') or contains(@class, 'single_add_to_cart_button')]

Clock on Reviews tab for the book Clicked
    Scroll Element Into View    ${REVIEW_BUTTON}
    Click Element    ${REVIEW_BUTTON}

Adding Stars in Review
    [Arguments]    ${num_stars}
    ${element}    Set Variable    xpath=//p[@class='stars']//span/a[@class='star-${num_stars}']
    Scroll Element Into View    ${element}
    Click Element    ${element}

Adding Comment in Text Area of Comments
    [Arguments]    ${comment_text}
    Scroll Element Into View    ${COMMENT_TEXT_AREA_LOCATOR}
    Input Text    ${COMMENT_TEXT_AREA_LOCATOR}    ${comment_text}

Adding Names In Name Field
    [Arguments]    ${name}
    Scroll Element Into View    ${ADDING_NAMES}
    Input Text    ${ADDING_NAMES}    ${name}

Adding Email in Email Field
    [Arguments]    ${email}
    Scroll Element Into View    ${ADDING_EMAIL}
    Input Text    ${ADDING_EMAIL}    ${email}

Clicking On Submit Button
    Scroll Element Into View    ${SUBMIT}
    Click Element    ${SUBMIT}

Clicking to Add to Basket Button
    Scroll Element Into View    ${ADD_BASKET}
    Click Element    ${ADD_BASKET}

Clicking to View Basket Button
    Wait Until Element Is Visible    ${VIEW_BASKET}    20
    Scroll Element Into View    ${VIEW_BASKET}
    Click Element    ${VIEW_BASKET}

Adding or Updating Quantity Of the Book
    [Arguments]    ${amount}
    Scroll Element Into View    ${QUANTITY}
    Input Text    ${QUANTITY}    ${amount}

Scrolling to Coupon Code and applying Coupon code button
    Scroll Element Into View    ${COUPON_CODE_TEXT_AREA}
    Wait Until Element Is Visible    ${COUPON_CODE_TEXT_AREA}    20
    Input Text    ${COUPON_CODE_TEXT_AREA}    ${coupon_actual_data}
    Sleep    2
    Scroll Element Into View    ${COUPON_CODE_BUTTON}
    Click Element    ${COUPON_CODE_BUTTON}

Clicking on Remove button to remove that from cart
    Scroll Element Into View    ${REMOVE_PRODUCT_locator}
    Wait Until Element Is Visible    ${REMOVE_PRODUCT_locator}    20
    Click Element    ${REMOVE_PRODUCT_locator}

Clicking on Update cart button
    Element Should Be Visible    ${UPDATE_BASKET_BTN_LOCATOR}    element not found
#    Scroll Element Into View    ${UPDATE_CART_BTN_LOCATOR}
    Wait Until Element Is Visible    ${UPDATE_BASKET_BTN_LOCATOR}    30
    Click Element    ${UPDATE_BASKET_BTN_LOCATOR}

Getting The Total Amount Of My Cart
    Scroll Element Into View    ${FINAL_TOTAL_LOCATOR}
    Wait Until Element Is Visible    ${FINAL_TOTAL_LOCATOR}    20
    ${total_amt}    Get Text    ${FINAL_TOTAL_LOCATOR}
    Log    Raw Total Text: ${total_amt}    console=True
    ${amount_str}    Evaluate    "${total_amt}[1:]".replace(",", "")
    Log    Cleaned Amount: ${amount_str}    console=True
    ${actual_numeric_total}    Convert To Number    ${amount_str}
    Log    Final Numeric Amount: ${actual_numeric_total}    console=True

Clicking on Checkout Button
    Scroll Element Into View    ${PROCEED_TO_CHECKOUT}
    Wait Until Element Is Visible    ${PROCEED_TO_CHECKOUT}    30
    ${is_ad_present}    Run Keyword And Return Status    Element Should Be Visible    ${Ads_Locator}    timeout=50
    IF    ${is_ad_present}    Scroll Element Into View    ${Ads_Locator}
    IF    ${is_ad_present}    Click Element    ${Ads_Locator}
    IF    ${is_ad_present}    Sleep    3
    Click Element    ${PROCEED_TO_CHECKOUT}
