*** Settings ***
Documentation  Pruebas de escenarios de Suite2
...            para verificar correcto acceso a
...            sistema
Resource  ../Resources/common.robot
Test Setup  Inicio sistema
Test Teardown  Finalizacion sistema

*** Variables ***
${nombre site}  Amazon

*** Keywords ***
Paso de ejecucion con parametro
    [Arguments]  ${parametro1}
    log  ${parametro1}
*** Test Cases ***
Test Case 1
    [Setup]  Inicio sistema  TCase
    log  Se ha iniciado el TC1 con el site ${nombre site}
    [Teardown]  Finalizacion sistema  TCase
Test Case 2
    log  Se ha iniciado el TC2  console=true

Test Case 3
    [Tags]  TC3
    [Template]  Paso de ejecucion con parametro
    Juan
    Alberto
    Maria



