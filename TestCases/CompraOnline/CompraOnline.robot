*** Settings ***
Test Setup  Navegar a la pagina   http://www.jardiland.es/jardin/maquinaria-y-herramientas/
Test Teardown  Cerrar navegador
Library  SeleniumLibrary

*** Variables ***
${Browser}  Firefox
${URL}  http://www.jardiland.es

*** Keywords ***
Navegar a la pagina
    [Arguments]  ${URL}
    open browser  ${URL}  ${Browser}
    maximize browser window

Cerrar navegador
    close browser

usuario no logeado
    log  usuario no logeado OK

usuario busca productos de tipo jardineria
    log  busqueda productos jardineria OK

aparecen resultados de busqueda de productos relevantes
    log  productos OK

*** Test Cases ***
Usuario no logeado puede listar productos catalogo
    Given usuario no logeado
    When usuario busca productos de tipo jardineria
    Then aparecen resultados de busqueda de productos relevantes

