*** Settings ***
Library    SeleniumLibrary
Test Setup    Open Browser    https://google.sk    gc
Test Teardown    Close Browser

*** Test Cases ***
Moj prvy test so Selenium
    Log    I'm on webpage    https://google.sk

Check If WTA Page Is Open
    # SETUP
    #     vykona vzdy pred startom testu

    # TEARDOWN
    #     vykona sa VZDY na konci testu
    Go To    http://bit.ly/WTA_APP
    # Manual:  Over ze som na spravnej stranke
    # overim: http://ajtyvit-app.westeurope.cloudapp.azure.com:8080/
    # assert, overenie, validacia
#    Sleep    3 min
#    ^ nedoporucovane
#    WAIT
    #    wait sa vykonava opakovane, a v momente ked najde ten nas assert (validaciu)
    #    tak pokracuje dalej
    # Sleep    20 s
    Wait Until Location Contains    ajtyvit-app.westeurope.cloudapp.azure.com   20 s
#    Location Should Contains     ajtyvit-app.westeurope.cloudapp.azure.com 
    Wait Until Page Contains    Women tester academy    20 s
