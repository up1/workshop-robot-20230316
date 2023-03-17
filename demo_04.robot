*** Settings ***
Resource     keyword.robot
Suite Setup   Open search page from google.com
Suite Teardown   Close Browser

*** Test Cases *** 
Success Cases
    [Template]  Success with search from google
 #  Input        | Expected result 
    robot
    abc
    123

Success Cases 02
    [Template]  Success with search from google 2
#  Input        | Expected result 
    xyz

*** Keywords ***
Success with search from google
    [Teardown]   ไปยังหน้าแรก
    [Arguments]  ${input}
    Search with "${input}"
    Found search result with robot

Success with search from google 2
    [Teardown]   ไปยังหน้าแรก
    [Arguments]  ${input}
    Search with "${input}"
    Found search result with robot

