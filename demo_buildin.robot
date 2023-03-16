*** Settings ***
Library    String

*** Variables ***
${DATA}   About 1,910,000,000 results (0.45 seconds)

*** Test Cases ***
Working with string
    Log To Console    ${DATA}\n
    @{words}=  Split String   ${DATA}   ${SPACE}	max_split=3
    Log To Console    ${words[0]}\n
    Log To Console    ${words[1]}\n
    Log To Console    ${words[2]}\n
    Log To Console    ${words[3]}\n

    Should Be Equal   About    ${words[0]}
    Should Be Equal   results    ${words[2]}





# About 1,910,000,000 results (0.45 seconds)
#About
#1,910,000,000
#results
#(0.45 seconds)