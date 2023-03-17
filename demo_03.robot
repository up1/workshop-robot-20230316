*** Settings ***
Resource     keyword.robot
Suite Setup   Open search page from google.com
Suite Teardown   Close Browser
Test Teardown    ไปยังหน้าแรก
Test Template    Success with search from google

*** Test Cases ***   Input
Success 01           robot
Success 02           abc
Success 03           123

*** Keywords ***
Success with search from google
    [Arguments]  ${input}
    Search with "${input}"
    Found search result with robot

