*** Settings ***
Library   SeleniumLibrary
Suite Teardown  Close All Browsers
Test Template   Success with signup process

*** Test Cases ***
# Test name  |  Firstname |    Lastname     | Address  | Zipcode  |  Expected result  
Case 01         somkiat	     Puisungnoen	  Bangkok	  10400	      Thank you!
Case 02         somkiat	     Puisungnoen	  Bangkok	  10400	      Thank you!

*** Keywords ***
Success with signup process
    [Arguments]  ${firstname}   ${lastname}  ${address}  ${zipcode}   ${expected_result}
    Go to signup page
    Fill in data   ${firstname}   ${lastname}  ${address}  ${zipcode}
    Found success page

Fill in data
    [Arguments]   ${firstname}   ${lastname}  ${address}  ${zipcode}
    Input Text    id=firstname    ${firstname}
    Input Text    id=lastname     ${lastname}
    Input Text    id=address      ${address}
    Input Text    id=zipcode      ${zipcode}
    Click Element    id=signup

Found success page
    Element Should Contain    xpath=/html/body/h1    Thank you!
    Element Should Contain    xpath=/html/body/p    You are now subscribed to our service.

Go to signup page
    Open Browser    http://www.kimschiller.com/page-object-pattern-tutorial/   
    ...    browser=edge
    Wait Until Element Is Enabled    id:signup