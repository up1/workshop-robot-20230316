*** Settings ***
Library   SeleniumLibrary

*** Keywords ***
Open signup page
    Open Browser    http://www.kimschiller.com/page-object-pattern-tutorial/   
    ...    browser=edge    

Verified signup page
    Wait Until Element Is Enabled    id:signup

Fill in data
    [Arguments]   ${firstname}   ${lastname}  ${address}  ${zipcode}
    Input Text    id=firstname    ${firstname}
    Input Text    id=lastname     ${lastname}
    Input Text    id=address      ${address}
    Input Text    id=zipcode      ${zipcode}

Signup for new user
    Click Element    id=signup