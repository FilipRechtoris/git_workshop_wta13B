*** Keywords ***
Open on Cyberpunk menu item
    Open Browser    http://bit.ly/WTA_APP    gc
    Wait Until Page Contains    Women tester academy    20 s
    Click Element    link:Cyberpunk_registration
    Wait Until Page Contains    Sign Up for the future

Open on Kalkulacka menu item
    Open Browser    http://bit.ly/WTA_APP    gc
    Wait Until Page Contains    Women tester academy    20 s
    Click Element    link:Kalkulacka
    Wait Until Page Contains    Výsledok

Enter first and second value
    [Arguments]    ${first_number}    ${second_number}

    Input Text    ${id_firstInput}    ${first_number}
    Input Text    ${id_secondInput}    ${second_number}
