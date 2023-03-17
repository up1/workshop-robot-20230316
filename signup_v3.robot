*** Settings ***
Library   SeleniumLibrary
Suite Teardown  Close All Browsers
Test Template   Success with signup process
Resource    pages/signup.robot
Resource    pages/success_result.robot

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
    signup.Fill in data    ${firstname}   ${lastname}  ${address}  ${zipcode}
    signup.Signup for new user

Found success page
    success_result.Verified success message
    
Go to signup page
    signup.Open signup page
    signup.Verified signup page
    