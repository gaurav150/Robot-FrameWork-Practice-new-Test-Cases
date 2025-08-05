*** Variables ***
${My_ACCOUNT}               xpath=//a[normalize-space()='My Account']
${Login_User_Name}          xpath=//input[@name='username']
${Password}                 xpath=//form[@class='login']//input[@name='password']
${Login_Btn}                xpath=//input[@name='login']
${Error_tag_locator}        xpath=//strong[normalize-space()='Error:']
${Empty_pass_locator}       xpath=//div[@class='clearfix']//li
${Sign_out_locator}         xpath=//a[normalize-space()='Sign out']
${LOGIN_TEXT_LOCATOR}       xpath=//h2[normalize-space()='Login']
${DASHBOARD_LOCATOR}        xpath=//a[normalize-space()='Dashboard']
