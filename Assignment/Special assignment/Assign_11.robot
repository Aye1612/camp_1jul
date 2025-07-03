***Settings***
Library     SeleniumLibrary


*** Variables ***

*** Keywords ***
Create User Info
    &{user_info}=    Create Dictionary        name=John    age=30    city=Bangkok
     RETURN    &{user_info}
 

*** Test Cases ***
TC001 Create User Info
    &{user}=     Create User Info
    Log To Console   ${user.name}
    Log To Console   ${user.age}
    Log To Console   ${user.city}
    
    
    
    


