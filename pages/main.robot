*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}   https://efiling.rd.go.th/rd-cms/

*** Keywords ***
Open home page 
    Open Browser    ${URL}    browser=edge
    Maximize Browser Window

Verified news
    Wait Until Element Is Visible    id=exampleModalLabel
    Wait Until Element Contains    id=exampleModalLabel    แจ้งข่าวสาร
    Click Element    xpath=//*[@id="announceModal"]/div/div/div[1]/button