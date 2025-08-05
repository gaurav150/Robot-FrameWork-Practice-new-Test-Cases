*** Variables ***
${FIRST_NAME}                   xpath=//input[@id='billing_first_name']
${LAST_NAME}                    css=input[id='billing_last_name']
${COMPANY_NAME}                 css=input[id='billing_company']
${EMAIL_ADDRESS}                xpath=//input[@id='billing_email']
${PHONE}                        xpath=//input[@id='billing_phone']
${COUNTRY_DROP_DOWN}            css=#s2id_billing_country
${COUNTRY_DROPDOWN_RESULTS}     xpath=//li[contains(@class, "select2-result")]
${COUNTRY_SEARCH_BOX}           xpath=(//input[@role='combobox'])[2]
${COUNTRY_NAME_SELECTION}       css=div.select2-container.country_to_state.country_select span.select2-chosen
${STREET_ADDRESS}               xpath=//input[@id='billing_address_1']
${APARTMENT_ADDRESS}            xpath=//input[@id='billing_address_2']
${TOWN_CITY}                    xpath=//input[@id='billing_city']
${STATE_BOX}                    css=#s2id_billing_state
${STATE_SEARCH_BOX}             css=#s2id_autogen2_search
${POSTCODE}                     xpath=//input[@name='billing_postcode']
${CHECKBOX}                     xpath=//input[@id='createaccount']
${PAYMENT_METHOD}               css=.wc_payment_method
${CASH_ON_DELIVERY}             xpath=//li[@class='wc_payment_method payment_method_cod']
${PLACE_ORDER}                  xpath=//input[@id='place_order']
${ACCOUNT_PASSWORD}             xpath=//input[@id='account_password']
${CASH_ON_DELIVERY}             xpath=//li[@class='wc_payment_method payment_method_cod']
${ADDITIONAL_INFORMATION}       xpath=//h3[normalize-space()='Additional Information']
