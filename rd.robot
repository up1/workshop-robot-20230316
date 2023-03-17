*** Settings ***
Resource    pages/main.robot
Resource    pages/login.robot

*** Test Cases ***
Login page with failure case :: wrong user and password
    ไปยังหน้าหลักของการยื่นภาษี
    ทำการยื่นแบบ online    wrong user    wrong password
    ทำการแสดง error message ว่า login ไม่ถูกต้อง

*** Keywords ***
ทำการแสดง error message ว่า login ไม่ถูกต้อง
    login.Verified error message with wrong username and password

ทำการยื่นแบบ online
    [Arguments]  ${username}   ${password}
    login.Fill in user and password   ${username}   ${password}
    login.เข้าสู่ระบบ

ไปยังหน้าหลักของการยื่นภาษี
    main.Open home page
    main.Verified news
    

