*** Settings ***
Library    SeleniumLibrary
Test Setup    Open Browser    http://bit.ly/WTA_APP    gc
Test Teardown    Close Browser

*** Variables ***
${id_clickMe}    id:clickMe

*** Keywords ***
# sluzi na definovanie vlasnych keyword
Open Click Me Baby One More Time
    Wait Until Page Contains    Women tester academy    20 s
    Click Element    link:Click me baby 
    Wait Until Page Contains    Click me baby one more time    20 s

Validate 3 clicks on button
    # existuje cyklus FOR / WHILE
    Click Element    ${id_clickMe}
    Click Element    ${id_clickMe}
    Click Element    ${id_clickMe}
    ${pocet_klikov}    Get Text    id:clicks
    Should Be Equal As Integers   ${pocet_klikov}    3

*** Test Cases ***
Open Click Me Baby
    Open Click Me Baby One More Time

Validate Click Me Baby Functionality
    Open Click Me Baby One More Time
    Validate 3 Clicks On Button



