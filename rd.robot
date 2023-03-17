*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}   https://efiling.rd.go.th/rd-cms/


*** Test Cases ***
Login page with failure case :: wrong user and password
    ไปยังหน้าหลักของการยื่นภาษี
    ทำการยื่นแบบ online    wrong user    wrong password
    ทำการแสดง error message ว่า login ไม่ถูกต้อง

*** Keywords ***
ทำการแสดง error message ว่า login ไม่ถูกต้อง
    Wait Until Element Is Visible  xpath=//ng-snotify/div[6]/ng-snotify-toast/div/div/div[2]
    Element Should Contain    xpath=//ng-snotify/div[6]/ng-snotify-toast/div/div/div[2]    
    ...    ชื่อผู้ใช้งานหรือรหัสผ่านไม่ถูกต้อง

ทำการยื่นแบบ online
    [Arguments]  ${username}   ${password}
    Wait Until Element Is Enabled    xpath=//*[@id="top"]/div/div[2]/button[1]
    Click Element    xpath=//*[@id="top"]/div/div[2]/button[1]
    Switch Window	NEW
    Wait Until Element Is Enabled    id=username
    Input Text    id=username    ${username}
    Input Text    id=passwordField    ${password}
    Click Element    xpath=//form/button

ไปยังหน้าหลักของการยื่นภาษี
    Open Browser    ${URL}    browser=edge
    Maximize Browser Window
    
    Wait Until Element Is Visible    id=exampleModalLabel
    Wait Until Element Contains    id=exampleModalLabel    แจ้งข่าวสาร
    Click Element    xpath=//*[@id="announceModal"]/div/div/div[1]/button

