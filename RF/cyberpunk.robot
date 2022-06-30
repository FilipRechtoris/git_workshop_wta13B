*** Settings ***
Library    SeleniumLibrary
Test Setup    Open On Cyberpunk Menu Item
Test Teardown    Close Browser
Resource    moje_keywordy.robot


*** Test Cases ***
Fill In Registration
    Input Text    name:email    a@a.sk
    #             xpath://input[@name='email']
    Input Text    name:name    Dr.
    Input Text    name:surname    Who
    Input Password    name:password    aiculedssul
    Input Password    name:passwordRepeat    aiculedssul
    Click Element    css:button.btn.btn-block
    # Click Element    xpath://button[@class='btn btn-block']
    Wait Until Page Contains    Welcome on board

    # XPATH
    #  //button[@lopatka='kovova']
    #  //button[text()='Sign up']
    #

