***Settings***
Library     SeleniumLibrary
Variables    config.yaml

*** Variables ***

*** Keywords ***

*** Test Cases ***
TC001 Test yaml
    Open Browser        ${app_url}        chrome
    Input Text    //input[@id="LoginForm_username"]    ${credentials.username}
    Set Selenium Speed    1s
    Input Text    //input[@id="LoginForm_password"]    ${credentials.password}
    Set Selenium Speed    1s
    

    # Log To Console    ${app_url}
    # Log To Console    ${credentials.username}
    # Log To Console    ${credentials.password}
    


