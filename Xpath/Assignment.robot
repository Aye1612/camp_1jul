***Settings***
Library     SeleniumLibrary
*** Variables ***

*** Keywords ***


*** Test Cases ***
TC01 Cart button
    Open Browser    file:///Users/wassika.p/Downloads/Xpath%20exercises/Assignment.html    chrome
    Click Button    xpath=//button[@id="cart-button"]
    Sleep    2s
TC02 "Fish Sauce" cost
    Open Browser    file:///Users/wassika.p/Downloads/Xpath%20exercises/Assignment.html    chrome
    ${cost}    Get Text    xpath=//img[@alt="Fish Sauce"]/ancestor::div[@class="product"]//div[@class="price"]/span
    Log To Console    ${cost} 
TC03 Check cart =0
    Open Browser    file:///Users/wassika.p/Downloads/Xpath%20exercises/Assignment.html    chrome 
    ${cart_qty}    Get Text    xpath=//*[@id="cart-button"]
    Log To Console    ${cart_qty} 
    Set Selenium Speed    5s
TC04 At to Fish Sauce to car
    Open Browser    file:///Users/wassika.p/Downloads/Xpath%20exercises/Assignment.html    chrome 
    Click Button    xpath=//img[@alt="Fish Sauce"]/ancestor::div[@class="product"]//button[text()="Add to Cart"]
    ${cart_qty2}    Get Text    xpath=//*[@id="cart-button"]
    Log To Console    ${cart_qty2} 
TC05 Slect all item cost less than 50 THB
    Open Browser    file:///Users/wassika.p/Downloads/Xpath%20exercises/Assignment.html    chrome 
    Click Button    //div[@class="product"][number(.//div[@class="price"]/span) < 50]//button[text()="Add to Cart"]
    ${cart_qty3}    Get Text    xpath=//*[@id="cart-button"]
    Log To Console    ${cart_qty3}
TC06 Remove from cart ของ "Fish Sauce"
    Open Browser    file:///Users/wassika.p/Downloads/Xpath%20exercises/Assignment.html    chrome 
    Click Button    xpath=//img[@alt="Fish Sauce"]/ancestor::div[@class="product"]//button[text()="Add to Cart"]    #Fish Sauce
    Click Button    xpath=//img[@alt="Sugar"]/ancestor::div[@class="product"]//button[text()="Add to Cart"]        #Sugar
    Click Button    xpath=//button[@id="cart-button"]
    Click Button    xpath=//*[@id="cart-items"]/li[text()="Fish Sauce - 50 THB"]//button[text()="Remove"]
    Sleep    2s
TC07 Slect all item cost between 20 and 50 THB
    Open Browser    file:///Users/wassika.p/Downloads/Xpath%20exercises/Assignment.html    chrome 
    @{lists}=    Get WebElements    xpath=//div[@class="product"][number(.//div[@class="price"]/span) >= 20 and number(.//div[@class="price"]/span) < 50]//button[text()="Add to Cart"]
    FOR    ${lis}    IN    @{lists}
        ${list}=    Get Text    ${lis}
        Click Element    ${lis}
    END
    Sleep    2s
 
    

