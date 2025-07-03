***Settings***
Library     SeleniumLibrary

*** Keywords ***
Print All Items
      [Arguments]    @{items}
      FOR    ${item}    IN    @{items}
          Log    ${item}
          Log To Console     ${items}
      END
      


*** Test Cases ***
TC001 Print all item 3-5 obj
    Print All Items        Black    Orange    Green    Blue    Pink

