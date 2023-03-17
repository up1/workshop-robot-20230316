*** Settings ***
Resource     keyword.robot
Suite Setup   Open search page from google.com
Suite Teardown   Close Browser
Test Teardown    ไปยังหน้าแรก

*** Test Cases ***
Success with search robot from google
    [Tags]   done  feature01  phase01
    Search with "robot"
    Found search result with robot

Success with search abc from google
    [Tags]   testing  feature02  phase02
    Search by keyword     abc
    Found search result with abc
    # ลูกค้าทำการ login เข้าระบบด้วย "somkiat@xxx.com" และ "123456"
    # ลูกค้าทำการ login เข้าระบบ    somkiat@xxx.com     123456
