*** Settings ***
Resource  ../InputData/data.robot

*** Keywords ***
Inicio sistema
    [Arguments]  ${parametro}=TSuite
    log  Inicio sistema pruebas suite 2 con param ${parametro}

Finalizacion sistema
    [Arguments]  ${parametro}=TSuite
    log  Finalizacion sistema de pruebas suite2 con param ${parametro}

Acceder a url en ventana maximizada
    [Arguments]  ${url}
    open browser  ${url}  ${Browser}
    maximize browser window