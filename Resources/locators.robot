*** Variables ***
${USERANME_FEILD}   //input[@id ='user-name']
${PASSWORD_FEILD}   //input[@id ='password']
${LOGIN_BUTTON}     //input[@id ='login-button']
${INVENTORY_PAGE}   //div[@id ='inventory_container']



#CheckoutPage
${first_name}   first-name
${Last_name}   last-name
${postal_code}  postal-code
${continue_button}  continue

#Complete_Page
${confirmation_message}  //h2[text()="Thank you for your order!"]

#Inventory Page
${Inventory_item}   //div[@data-test='inventory-item-name']
${Inventory_item_desc}  //div[@data-test='inventory-item-desc']
${Inventory_item_price}    //div[@data-test='inventory-item-price']
${Inventory_item_add_button}    //button[text()='Add to cart']
${cart_container}   shopping_cart_container

#Checkout_Page
${Checkout_button}     checkout