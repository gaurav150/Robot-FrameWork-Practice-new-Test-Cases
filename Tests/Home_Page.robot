*** Settings ***
Library             SeleniumLibrary
Resource            ../Resources/automation_testing.robot
Resource            ../Resources/Billing_details_page.robot
Resource            ../Resources/order_page.robot

# Suite Setup    Setup All Browsers
Test Teardown       Close Browser


*** Variables ***
${userName}             Rohit
${lName}                Kumar
${cName}                ZK
${Email}                fs@fmail.com
${contactDetails}       8967023412
${Country}              India
${firstLine}            Sarjapura
${secondLine}           Silk board
${City}                 Bengaluru
${state}                Karnataka
${pin}                  789321
${password}             qwerty123


*** Test Cases ***
Home page With Three Sliders only
    [Tags]    first
    Open Browser To AutomationTesting Page
    Click On Shop Menu
    Click on Home menu button
    Verify the Home page Three Arrivals are present

Verify Three Arrivals and Navigation
    [Tags]    smoke
    Open Browser To AutomationTesting Page
    Click On Shop Menu
    Click on Home menu button
    Scrolling to new arrivals
    Verify the Home page Three Arrivals are present
    Click first arrival
    Verify it is navigating to next page
    Verify it contains add to card button

Adding Reviews for First Product
    [Tags]    smoke
    Open Browser To AutomationTesting Page
    Click On Shop Menu
    Click on Home menu button
    Verify the Home page Three Arrivals are present
    Click first arrival
    Verify it is navigating to next page
    Verify it contains add to card button
    Clock on Reviews tab for the book Clicked
    Adding Stars in Review    2
    Adding Comment in Text Area of Comments    Good Book
    Adding Names In Name Field    Pooja
    Adding Email in Email Field    Navya@email.com
    Clicking On Submit Button

Add Items To Bucket With Coupons
    [Tags]    smoke
    Open Browser To AutomationTesting Page
    Click On Shop Menu
    Click on Home menu button
    Verify the Home page Three Arrivals are present
    Click first arrival
    Verify it is navigating to next page
    Sleep    5
    Verify it contains add to card button
    Sleep    5
    Clicking to Add to Basket Button
    Sleep    3    verifying what happened in this step
    Clicking to View Basket Button
    Adding or Updating Quantity Of the Book    3
    Scrolling to Coupon Code and applying Coupon code button

Add Items To Bucket With Coupons and Removing the Product from cart
    [Tags]    smoke
    Open Browser To AutomationTesting Page
    Click On Shop Menu
    Click on Home menu button
    Verify the Home page Three Arrivals are present
    Click first arrival
    Verify it is navigating to next page
    Verify it contains add to card button
    Clicking to Add to Basket Button
    Sleep    3    verifying what happened in this step
    Clicking to View Basket Button
    Adding or Updating Quantity Of the Book    3
    Clicking on Update cart button
    Sleep    3
    Adding or Updating Quantity Of the Book    5
    Sleep    3
    Clicking on Update cart button
    Sleep    3
    Scrolling to Coupon Code and applying Coupon code button
    Getting The Total Amount Of My Cart

Add to Basket Items Checkout Update Basket
    [Documentation]    In This test we are testing Products are added to basket
    ...    and checking out
    [Tags]    smoke
    Open Browser To AutomationTesting Page
    Click On Shop Menu
    Click on Home menu button
    Verify the Home page Three Arrivals are present
    Click first arrival
    Verify it is navigating to next page
    Verify it contains add to card button
    Clicking to Add to Basket Button
    Sleep    3    verifying what happened in this step
    Clicking to View Basket Button
    Adding or Updating Quantity Of the Book    3
    Clicking on Update cart button
    Sleep    3
    Adding or Updating Quantity Of the Book    5
    Sleep    3
    Clicking on Update cart button
    Sleep    3
    Scrolling to Coupon Code and applying Coupon code button
    Getting The Total Amount Of My Cart
    Clicking on Checkout Button

#    Clicking on Remove button to remove that from cart

Add to Basket Items Checkout Update Basket And Entering Billing Details
    [Documentation]    IN This test we are testing Products are added to basket
    ...    and checking out
    [Tags]    smoke
    Open Browser To AutomationTesting Page
    Click On Shop Menu
    Click on Home menu button
    Verify the Home page Three Arrivals are present
    Click first arrival
    Verify it is navigating to next page
    Verify it contains add to card button
    Clicking to Add to Basket Button
    Sleep    3    verifying what happened in this step
    Clicking to View Basket Button
    Adding or Updating Quantity Of the Book    3
    Clicking on Update cart button
    Sleep    3
    Adding or Updating Quantity Of the Book    5
    Sleep    3
    Clicking on Update cart button
    Sleep    3
    Scrolling to Coupon Code and applying Coupon code button
    Getting The Total Amount Of My Cart
    Clicking on Checkout Button
    Entering UserFirstName and LastName    ${userName}    ${lName}
    Sleep    3
    Entering Company Name    ${cName}
    Entering Email Address    ${Email}
    Entering Contact Number    ${contactDetails}
    Sleep    10
    Select Country From Dropdown    ${Country}
    Adding Address Details    ${firstLine}    ${secondLine}    ${City}
    Select State name From the List    ${state}
    Entering Pincode    ${pin}
#    Sleep    30s
    Click On Create Account CheckBox
    Adding Password to the field    ${password}
    Clicking on PaymentMethod    Cash on Delivery
    Placing The Order
    Verify Payment Method Should Be    Cash on Delivery
    Sleep    30s
#    Verifying the Title text with actual text
