*** Settings ***
Library    SeleniumLibrary
Test Setup    Open On Kalkulacka Menu Item
Test Teardown    Close Browser
Resource    moje_keywordy.robot
Resource    moje_variables.robot



*** Test Cases ***
TC: 1.1 - Spocitaj
    [Tags]    spocitaj    regress
    Enter First And Second Value    1     2
    Click Element    id:count
    ${vysledok}    Get Text    ${id_result}
    Should Be Equal As Integers    ${vysledok}    3

TC: 1.2 - Spocitaj
    [Tags]    spocitaj
    Enter First And Second Value    1     0
    Click Element    id:count
    ${vysledok}    Get Text    ${id_result}
    Should Be Equal As Integers    ${vysledok}    1

TC: 1.3 - Spocitaj
    [Tags]    spocitaj
    Enter First And Second Value    -1    -1 
    Click Element    id:count
    ${vysledok}    Get Text    ${id_result}
    Should Be Equal As Integers    ${vysledok}    -2

TC: 2 - Odpocitaj
    [Tags]    odpocitaj    regress
    Enter First And Second Value    0     4
    Click Element    id:deduct
    ${vysledok}    Get Text    ${id_result}
    Should Be Equal As Integers    ${vysledok}    -4

TC: 3 - Vynasob
    [Tags]    vynasob    regress
    Enter First And Second Value    1    5
    Click Element    id:multiply
    ${vysledok}    Get Text    ${id_result}
    Should Be Equal As Integers    ${vysledok}    5

TC: 4 - Vydel
    Enter First And Second Value    25    5
    Click Element    id:divide
    ${vysledok}    Get Text    ${id_result}
    Should Be Equal As Integers    ${vysledok}    5

TC: 5 - Vynuluj
    Enter First And Second Value    25    5
    Click Element    id:reset
    ${vysledok}    Get Text    ${id_result}
    # AK Vytahujem text/data z <input  pouzivam Get Value
    ${first_input}    Get Value    ${id_firstInput}
    ${second_input}    Get Value    ${id_secondInput}
    Should Be Empty    ${vysledok}
    Should Be Empty    ${first_input}
    Should Be Empty    ${second_input}