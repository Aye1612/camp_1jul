***Settings***
Library     SeleniumLibrary

*** Variables ***

*** Keywords ***

*** Test Cases ***
TC001 Print Fruit List
    @{fruits}    Create List    apple       banana    cherry
    FOR    ${fruit}    IN    @{fruits}
        Log    ${fruit}
        Log To Console    ${fruit}
    END
    
    
    
    


