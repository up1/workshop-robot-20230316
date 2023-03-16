*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    http://nervgh.github.io/pages/angular-file-upload/examples/simple/

*** Test Cases ***
Success with upload 3 files
    Open upload page
    Choose and upload files
    Confirm upload

*** Keywords ***
Open upload page
    Open Browser    ${URL}    browser=edge
    Maximize Browser Window

Choose and upload files
     Choose File   xpath=//div[1]/input[2]   ${CURDIR}/data/1.txt
     Choose File   xpath=//div[1]/input[2]   ${CURDIR}/data/2.txt
     Choose File   xpath=//div[1]/input[2]   ${CURDIR}/data/3.txt
     Wait Until Element Is Enabled    id:result-stats

Confirm upload