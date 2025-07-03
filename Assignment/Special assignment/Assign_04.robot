***Settings***
Library     SeleniumLibrary

*** Keywords ***
Greet User
      [Arguments]    ${name}=Guest
      Log    Hello,${name}
      Log To Console    Hello,${name}


*** Test Cases ***
TC001 Not sending name
    Greet User   

TC002 Sending name(John)
    Greet User    John