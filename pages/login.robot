*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Fill in user and password
    [Arguments]  ${username}   ${password}
    Wait Until Element Is Enabled    xpath=//*[@id="top"]/div/div[2]/button[1]
    Click Element    xpath=//*[@id="top"]/div/div[2]/button[1]
    Switch Window	NEW
    Wait Until Element Is Enabled    id=username
    Input Text    id=username    ${username}
    Input Text    id=passwordField    ${password}

เข้าสู่ระบบ
    Click Element    xpath=//form/button

Verified error message with wrong username and password
    Wait Until Element Is Visible  xpath=//ng-snotify/div[6]/ng-snotify-toast/div/div/div[2]
    Element Should Contain    xpath=//ng-snotify/div[6]/ng-snotify-toast/div/div/div[2]    
    ...    ชื่อผู้ใช้งานหรือรหัสผ่านไม่ถูกต้อง