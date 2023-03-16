*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${URL}    https://www.google.com

*** Test Cases ***
Success with search robot from google
    [Tags]   done  feature01  phase01
    Open search page from google.com
    Search with robot
    Found search result with robot

Success with search abc from google
    [Tags]   testing  feature02  phase02
    Open search page from google.com
    Search with abc
    Found search result with abc

*** Keywords ***
Found search result with robot
    Wait Until Element Is Enabled    id:result-stats
    Element Should Contain    id:result-stats   ผลการค้นหาประมาณ
    Element Should Contain    id:result-stats   รายการ

Found search result with abc
    Wait Until Element Is Enabled    id:result-stats
    Element Should Contain    id:result-stats   ผลการค้นหาประมาณ
    Element Should Contain    id:result-stats   รายการ

Search with abc
    Input Text    name:q   abc
    Press Keys    name:q    RETURN

Search with robot
    Input Text    name:q   robot
    Press Keys    name:q    RETURN

Open search page from google.com
    Open Browser    ${URL}    browser=edge
    Maximize Browser Window
    # ตรวจสอบหน้าจอ
    Wait Until Element Is Enabled    name:q
    Wait Until Element Is Enabled    name:btnK
    Element Attribute Value Should Be     name:btnK    value    ค้นหาด้วย Google