***Settings***
Library     SeleniumLibrary

*** Keywords ***
Validate Age 
      [Arguments]    ${age}
      Run Keyword If    ${age} > 18
      ...    Log To Console    Eligible for voting
      ...  ELSE
      ...    Log To Console    Not eligible for voting


*** Test Cases ***
TC001 Validate age 16
    Validate Age    16

TC002 Validate age 20
    Validate Age    20

    