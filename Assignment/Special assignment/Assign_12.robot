***Settings***
Library     SeleniumLibrary


*** Variables ***

*** Keywords ***
Age Verification

    

*** Test Cases ***
TC001 Age Verification
    ${age}    Set Variable    12
    IF    ${age} > 18
        Log To Console    You are an adult
    ELSE IF    ${age} == 18
        Log To Console    You just became an adult
    ELSE
        Log To Console    You are underage
    END
    
    
    
    


