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
     # Check queue length of upload files
     Element Should Contain    xpath=//div/div[2]/div[2]/p    Queue length: 3
     Page Should Contain Element    xpath=//table/tbody/tr    limit=3

     # Check File name
     Element Should Contain    
     ...    xpath=//table/tbody/tr[1]/td[1]    
     ...    1.txt
     Element Should Contain    
     ...    xpath=//table/tbody/tr[2]/td[1]    
     ...    2.txt
     Element Should Contain    
     ...    xpath=//table/tbody/tr[3]/td[1]    
     ...    3.txt

    # Check upload button => enable and disable
    Element Should Be Enabled    xpath=//table/tbody/tr[1]/td[5]/button[1]
    Element Text Should Be       xpath=//table/tbody/tr[1]/td[5]/button[1]    Upload
    Element Should Be Disabled   xpath=//table/tbody/tr[1]/td[5]/button[2]
    Element Text Should Be       xpath=//table/tbody/tr[1]/td[5]/button[2]    Cancel

    Element Should Be Enabled   xpath=//table/tbody/tr[2]/td[5]/button[1]
    Element Should Be Disabled   xpath=//table/tbody/tr[2]/td[5]/button[2]

    Element Should Be Enabled   xpath=//table/tbody/tr[3]/td[5]/button[1]
    Element Should Be Disabled   xpath=//table/tbody/tr[3]/td[5]/button[2]

Confirm upload
    Click Element    xpath=//table/tbody/tr[1]/td[5]/button[1]
    Wait Until Element Is Visible    xpath=//div[@style="width: 33%;"]

    Click Element    xpath=//table/tbody/tr[2]/td[5]/button[1]
    Wait Until Element Is Visible    xpath=//div[@style="width: 67%;"]

    Click Element    xpath=//table/tbody/tr[3]/td[5]/button[1]
    Wait Until Element Is Visible    xpath=//div[@style="width: 100%;"]