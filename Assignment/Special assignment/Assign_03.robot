***Settings***
Library     SeleniumLibrary

*** Keywords ***
Print User Info
      [Arguments]    &{user_info}
      Log To Console    Name: ${user_info["name"]} 
      Log To Console    Age: ${user_info["age"]} 
      Log To Console    City: ${user_info["city"]}


*** Test Cases ***
TC001 Print User Info
    Print User Info    name=Anya    age=4    city=SpyXfamily