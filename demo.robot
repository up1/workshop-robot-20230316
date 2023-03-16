*** Settings ***
Library  SeleniumLibrary

*** Variables ***


*** Test Cases ***
Success with search robot from google
    Open search page from google.com
    Search with robot
    Found search result with robot

*** Keywords ***
Open search page from google.com
    Open Browser    https://www.google.com    browser=edge
    Maximize Browser Window