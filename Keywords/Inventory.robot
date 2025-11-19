****** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/locators.robot
Resource    ../Resources/variables.robot



*** Keywords ***
List of products and click on each Element
    @{List}=     Get WebElements    xpath=${Inventory_item}
    FOR    ${element}    IN    @{List}
        ${Text}=    Get Text    ${element}
        ${Description}=     Get Text    ${Inventory_item_desc}
        ${Price}=      Get Text  ${Inventory_item_price}
         Click Button       ${Inventory_item_add_button}
         Sleep    3s
        Log    ${Text}
        Log     ${Description}
        Log     ${Price}

    END
Go To cart and check
    Click Element    id:${cart_container}
    Sleep    3s    


