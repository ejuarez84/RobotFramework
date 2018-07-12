*** Settings ***
Library  SeleniumLibrary
Library  ../External/common.py

*** Variables ***
${Browser}  Firefox
${URL}  https://www.mercadona.es

*** Keywords ***
Accion que devuelve un valor
    [Arguments]  ${parametro1}

    [Return]  Valor devuelto ${parametro1}

*** Test Cases ***
Abrir y cerrar navegador
    [Tags]  browser
    open browser  ${URL}  ${Browser}
    maximize browser window
    Lista productos de la web  o-info
    #input text  xpath://input[@id='lst-ib']  robotframework
    #click button  name=btnK
    sleep  3
    close browser

Abrir enlace que contiene Robot en su descripción
    [Tags]  enlaces
    open browser  ${URL}  ${Browser}
    maximize browser window
    input text  xpath://input[@id='lst-ib']  robotframework
    click button  name=btnK
    click link  xpath://a[contains(text(),'Robot')]
    ${valor devuelto}=  Accion que devuelve un valor  Eduardo
    log  Valor devuelto por la keyword ${valor devuelto}
    close browser
