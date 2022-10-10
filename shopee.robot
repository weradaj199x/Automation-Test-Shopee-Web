*** Settings ***
Library    Selenium2Library

*** Variables ***

*** Keywords ***
Open Shopee
    Open Browser    https://www.shopee.co.th/    browser=gc
    #Set Selenium Speed     0.5s
select language thai
    Click Button    xpath=//button[@class='shopee-button-outline shopee-button-outline--primary-reverse']
closed popup the advert
    Click Element    xpath=//svg[@class='home-popup__close-button']
select login menu on navbar
    Click Element    xpath=//a[@class='navbar__link navbar__link--account navbar__link--login navbar__link--tappable navbar__link--hoverable navbar__link-text navbar__link-text--medium navbar__link-text--normal-case']
Login
    [Arguments]    ${username}    ${password}
    Input Text    name=loginKey    ${username}
    Input Password    name=password    ${password}
    Click Button    xpath=//button[@class='wyhvVD _1EApiB hq6WM5 L-VL8Q cepDQ1 _7w24N1']
    
*** Test Cases ***
Case ID: S001 - ไทย
    Open Shopee
    Wait Until Page Contains Element    class=language-selection
    select language thai
    closed popup the advert
    select login menu on navbar
    Wait Until Page Contains Element    class=pDzPRp
    Login    0970709519    password

   