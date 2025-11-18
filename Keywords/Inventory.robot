****** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/locators.robot
Resource    ../Resources/variables.robot
Resource    ../Resources/Login_once.robot

Suite Setup  Login sauce Lab




*** Keywords ***
List of products and click on each Element
    @{List}=     Get WebElements    xpath=//div[@data-test='inventory-item-name']
    FOR    ${element}    IN    @{List}
        ${Text}=    Get Text    ${element}
        ${Description}=     Get Text    //div[@data-test='inventory-item-desc']
        ${Price}=      Get Text  //div[@data-test='inventory-item-price']
         Click Button       //button[text()='Add to cart']
         Sleep    3s
        Log    ${Text}
        Log     ${Description}
        Log     ${Price}

    END
Go To cart and check
    Click Element    id=shopping_cart_container
    Sleep    3s    


