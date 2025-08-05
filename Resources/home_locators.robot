*** Variables ***
${SHOP_MENU}                    xpath=//a[normalize-space()='Shop']
${HOME_MENU}                    xpath=//a[normalize-space()='Home']
${THREE_ARRIVALS}               xpath=//div[@class='woocommerce']/ul/li
${FIRST_ARRIVAL}                xpath=(//div[@class='woocommerce']/ul/li)[1]
${NEW_ARRIVALS}                 xpath=//h2[normalize-space()='new arrivals']
${NEXT_PAGE_PATH}               xpath=//nav[@class='woocommerce-breadcrumb']
${REVIEW_BUTTON}                css=a[href='#tab-reviews']
${STAR_LOCATOR}                 xpath=//p[@class='stars']//span/a[@class='star-2']
${COMMENT_TEXT_AREA_LOCATOR}    xpath=//textarea[@id='comment']
${ADDING_NAMES}                 xpath=//input[@id='author']
${ADDING_EMAIL}                 xpath=//input[@id='email']
${SUBMIT}                       xpath=//input[@id='submit']
${ADD_BASKET}                   xpath=//button[normalize-space()='Add to basket']
${VIEW_BASKET}                  xpath=//a[normalize-space()='View Basket']
${PRICE_AMOUNT}                 xpath=//td[@class='product-price']//span//span
${QUANTITY}                     xpath=//input[@title='Qty']
${SUB_TOTAL}                    xpath=//td[@data-title='Subtotal']//span[@class='woocommerce-Price-amount amount']
${Ads_Locator}                  xpath=//*[name()='path' and contains(@d, 'm256')]
