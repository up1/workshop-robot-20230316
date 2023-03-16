*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${URL}    https://www.google.com

*** Test Cases ***
Success with search robot from google
    Open Browser    ${URL}    browser=edge
    Maximize Browser Window
    Wait Until Element Is Enabled    name:q
    Wait Until Element Is Enabled    name:btnK
    Element Attribute Value Should Be     name:btnK    value    ค้นหาด้วย Google
    Input Text    name:q   robot
    Press Keys    name:q    RETURN
    Wait Until Element Is Enabled    id:result-stats
    Element Should Contain    id:result-stats   ผลการค้นหาประมาณ
    Element Should Contain    id:result-stats   รายการ