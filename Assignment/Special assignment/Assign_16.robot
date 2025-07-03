***Settings***
Library     SeleniumLibrary

*** Variables ***

*** Keywords ***
Calculate Factorial
    [Arguments]     ${number}
    ${number}=    Convert To Integer    ${number}
    Run Keyword IF      ${number}==1    Return From Keyword     1
    ${new_number}=    Evaluate    ${number} - 1
    ${previous}=   Calculate Factorial     ${new_number}
    ${result}=     Evaluate    ${number} * ${previous}
    Return From Keyword    ${result}

*** Test Cases ***
TC001 Test Factorial Calculation
    ${result}    Calculate Factorial    5
    Log To Console    ${result}
    
     