*** Variables ***
${FIRST_NAME}                   xpath=//input[@name='shipping_first_name']
${LAST_NAME}                    xpath=//input[@name='shipping_last_name']
${COMPANY_NAME}                 xpath=//input[@name='shipping_company']
${STREET_ADDRESS}               xpath=//input[@name='shipping_address_1']
${APARTMENT_ADDRESS}            xpath=//input[@name='shipping_address_2']
${TOWN_ADDRESS}                 xpath=//input[@name='shipping_city']
${COUNTRY_TEXTS}                xpath=//label[@for='shipping_country']
${COUNTRY_SEARCH_BOX}           xpath=(//input[@role='combobox'])[2]
${SHIPPING_COUNTRY}             css=#s2id_shipping_country
${SHIPPING_COUNTRY_RESULTS}     xpath=//li[contains(@class, "select2-result")]
${STATE_TEXTS}                  xpath=//label[@for='shipping_state']
${SHIPPING_STATE}               css=#s2id_shipping_state
${STATE_SEARCH_BOX}             xpath=(//input[@role='combobox'])[2]
${SHIPPING_STATE_RESULTS}       xpath=//li[contains(@class, "select2-result")]
${POSTCODE}                     xpath=//input[@name='shipping_postcode']
${SAVE_ADDRESS_BUTTON}          xpath=//input[@name='save_address']
