***Settings***
Library     SeleniumLibrary

*** Keywords ***
Print Fruits 
      [Arguments]    @{fruits}
      FOR    ${fruit}    IN    @{fruits}
          Log    ${fruit}
          Log To Console    ${fruit}
      END
    

*** Test Cases ***
TC001 Print Fruits
    Print Fruits    apple    banana  cherry  



    