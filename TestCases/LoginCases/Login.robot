*** Settings ***
Library  ../External/common.py

*** Variables ***

*** Keywords ***
KeywordA
    ${resultado}=  Conectarme al sistema remoto de creacion de helados
    log  mayor que 17 ${resultado}  console=true

KeywordB
    log  igual a 17  console=true

KeywordC
    log  menor a 17  console=true

Accion que recibe un parametro y en funcion del mismo realiza accion A o B
    [Arguments]  ${edad}
    run keyword if  ${edad}>17  KeywordA
    ...             ELSE IF  ${edad}==17  KeywordB
    ...             ELSE  KeywordC

*** Test Cases ***
Acceder a la web y obtener titulo
    [Documentation]  Comprobar el título de la web
    [Tags]  Acceder
    Acceder a url en ventana maximizada  ${site pruebas}
    ${titulo}=  get title
    ${result}=  should be equal as strings  ${titulo}  Amazon.es: compra online de electrónica, libros, deporte, hogar, moda y mucho más.
    close browser

Acceder a login a partir del menú superior de identificación
    [Documentation]  Acceder a login a partir del menú superior de identificación
    [Tags]  Login
    Acceder a url en ventana maximizada  ${site pruebas}
    sleep  2
    mouse over  id=nav-link-accountList
    sleep  2
    Click Link  xpath://a[@data-nav-role = 'signin']
    ${atributo boton}=  get element attribute  id=continue  type=submit
    should be equal as strings  ${atributo boton}  submit
    close browser

Edades
    [Tags]  Edades
    Accion que recibe un parametro y en funcion del mismo realiza accion A o B  20
