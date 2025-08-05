*** Variables ***
${COUPON_CODE_TEXT_AREA}                xpath=//input[@name='coupon_code']
${COUPON_CODE_BUTTON}                   xpath=//input[@name='apply_coupon']
${coupon_actual_data}                   krishnasakinala
${coupon_code_success_text_locator}     xpath=//div[@class='woocommerce-message']
${coupon_code_success_text}             Coupon code applied successfully.
${coupon_code_error_text_locator}       xpath=//ul[@class='woocommerce-error']//li
${coupon_code_error_text}               The minimum spend for this coupon is ₹450.00.
${REMOVE_PRODUCT_locator}               xpath=//td[@class='product-remove']//a
${Checkout_btn_locator}                 xpath=//div[@class='wc-proceed-to-checkout']//a
${UPDATE_BASKET_BTN_LOCATOR}            xpath=//input[@value='Update Basket']
${FINAL_TOTAL_LOCATOR}                  xpath=//tr[@class='order-total']//span[@class='woocommerce-Price-amount amount']
${PROCEED_TO_CHECKOUT}                  xpath=//a[normalize-space()='Proceed to Checkout']
