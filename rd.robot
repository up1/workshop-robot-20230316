*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}   https://efiling.rd.go.th/rd-cms/


*** Test Cases ***
Login page with failure case :: wrong user and password
    ไปยังหน้าหลักของการยื่นภาษี
    ทำการยื่นแบบ online

*** Keywords ***
ทำการยื่นแบบ online
    Wait Until Element Is Enabled    xpath=//*[@id="top"]/div/div[2]/button[1]
    Click Element    xpath=//*[@id="top"]/div/div[2]/button[1]
    Switch Window	NEW
    Wait Until Element Is Enabled    id=username
    Input Text    id=username    xxxxxx  
    Input Text    id=passwordField    yyyyy
    Click Element    xpath=//form/button

ไปยังหน้าหลักของการยื่นภาษี
    Open Browser    ${URL}    browser=edge
    Maximize Browser Window
    
    Wait Until Element Is Visible    id=exampleModalLabel
    Wait Until Element Contains    id=exampleModalLabel    แจ้งข่าวสาร
    Click Element    xpath=//*[@id="announceModal"]/div/div/div[1]/button

