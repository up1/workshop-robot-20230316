*** Settings ***
Library   SeleniumLibrary

*** Test Cases ***
Success with signup process
    Go to signup page
    Fill in data
    Found success page

*** Keywords ***
Go to signup page
    Open Browser    http://www.kimschiller.com/page-object-pattern-tutorial/   
    ...    browser=edge
    Wait Until Element Is Enabled    id:signup

Fill in data
    Input Text    id=firstname    Somkiat
    Input Text    id=lastname    Puisungnoen
    Input Text    id=address    Bangkok
    Input Text    id=zipcode    10400
    Click Element    id=signup

Found success page
    Element Should Contain    xpath=/html/body/h1    Thank you!
    Element Should Contain    xpath=/html/body/p    You are now subscribed to our service.
    