***Settings***
Library     SeleniumLibrary

*** Keywords ***
Set And Use Local Variable
    Set Local Variable    
    ...    ${LOCAL_VAR}    Local Value
    #   Log To Console  ${LOCAL_VAR}


      
*** Test Cases ***
TC001 Global vs Local
    Set Global Variable 
    ...    ${GLOBAL_VAR}    Global Value
    Set And Use Local Variable
    Log To Console  ${LOCAL_VAR}
    Log To Console  ${GLOBAL_VAR}
