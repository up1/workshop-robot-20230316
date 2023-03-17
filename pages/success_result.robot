*** Settings ***
Library   SeleniumLibrary

*** Keywords ***
Verified success message
    Element Should Contain    xpath=/html/body/h1    Thank you!
    Element Should Contain    xpath=/html/body/p     You are now subscribed to our service.