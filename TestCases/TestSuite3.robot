*** Settings ***
Library  Remote  http://127.0.0.1:8270
Resource  ../Resources/common.robot
Test Setup  Inicio sistema
Test Teardown  Finalizacion sistema

*** Variables ***

*** Keywords ***

*** Test Cases ***

Test Case 1
    abrir_cuenta
    cerrar_cuenta
    ${saldo}  obtener_saldo
    log  El saldo es: ${saldo}  console=true