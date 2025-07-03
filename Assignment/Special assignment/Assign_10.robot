***Settings***
Library     SeleniumLibrary

*** Variables ***

*** Keywords ***
Create fruit list
    @{Fruits}=    Create List        apple    mango    banana
     RETURN    @{Fruits}
 

*** Test Cases ***
TC001 Test Fruit list
    @{my_fruit}=    Create fruit list
    Log To Console    ${my_fruit[0]}
    Log To Console    ${my_fruit[1]}
    Log To Console    ${my_fruit[2]}
    
    
    
    


