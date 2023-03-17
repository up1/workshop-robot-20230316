*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${URL}    https://www.google.com

*** Keywords ***
ไปยังหน้าแรก
    Go To   ${URL}

ลูกค้าทำการ login เข้าระบบ
    [Arguments]  ${email}   ${password}
    Input Text    locator    ${email}
    Input Password    locator    ${password}

ลูกค้าทำการ login เข้าระบบด้วย "${email}" และ "${password}"
    Input Text    locator    ${email}
    Input Password    locator    ${password}


Search with "${keyword}"
    Input Text    name:q   ${keyword}
    Press Keys    name:q    RETURN

Search by keyword
    [Arguments]   ${keyword}
    Input Text    name:q   ${keyword}
    Press Keys    name:q    RETURN

Found search result with robot
    Wait Until Element Is Enabled    id:result-stats
    Element Should Contain    id:result-stats   ผลการค้นหาประมาณ
    Element Should Contain    id:result-stats   รายการ

Found search result with abc
    Wait Until Element Is Enabled    id:result-stats
    Element Should Contain    id:result-stats   ผลการค้นหาประมาณ
    Element Should Contain    id:result-stats   รายการ

Open search page from google.com
    Open Browser    ${URL}    browser=edge
    Maximize Browser Window
    # ตรวจสอบหน้าจอ
    Wait Until Element Is Enabled    name:q
    Wait Until Element Is Enabled    name:btnK
    Element Attribute Value Should Be     name:btnK    value    ค้นหาด้วย Google