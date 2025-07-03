***Settings***
Library     SeleniumLibrary
Variables    config.yaml

*** Variables ***

*** Keywords ***

*** Test Cases ***
TC001 Test yaml
    Log To Console    name=${user.name}
    Log To Console    ${user.age}
    Log To Console    ${user.city}

    


