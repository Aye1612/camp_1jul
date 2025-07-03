***Settings***
Library     SeleniumLibrary

*** Variables ***

*** Keywords ***

*** Test Cases ***
TC001 Example Test With Setup And Teardown
    [Setup]
    Open Browser    https://www.google.com/    chrome
    [Teardown]
    Close Browser
    Log To Console    Test is running
    
     