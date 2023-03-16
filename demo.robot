*** Settings ***
Library  SeleniumLibrary

*** Variables ***


*** Test Cases ***
Success with search robot from google
    Open search page from google.com
    Search with robot
    Found search result with robot

*** Keywords ***
Found search result with robot
    Wait Until Element Is Enabled    id:result-stats
    Element Should Contain    id:result-stats   ผลการค้นหาประมาณ
    Element Should Contain    id:result-stats   รายการ

Search with robot
    Input Text    name:q   robot
    Press Keys    name:q    RETURN

Open search page from google.com
    Open Browser    https://www.google.com    browser=edge
    Maximize Browser Window
    # ตรวจสอบหน้าจอ
    Wait Until Element Is Enabled    name:q
    Wait Until Element Is Enabled    name:btnK
    Element Attribute Value Should Be     name:btnK    value    ค้นหาด้วย Google