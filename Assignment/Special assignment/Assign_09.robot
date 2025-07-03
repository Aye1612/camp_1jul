***Settings***
Library     SeleniumLibrary

*** Variables ***

*** Keywords ***
calculate squre
    [Arguments]       ${number} 
    ${result}=    Evaluate    ${number} * ${number} 
     RETURN    ${result}
 

*** Test Cases ***
TC001 Test calculate squre
    ${total}    calculate squre    2
    Log To Console    ${total}
    
    
    


