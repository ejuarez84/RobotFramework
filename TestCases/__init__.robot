*** Settings ***
Suite Setup  Init suite
Suite Teardown  Fin suite

*** Keywords ***
Init suite
    [Arguments]
    log  Suite... INIT

Fin suite
    [Arguments]
    log  Suite... FIN

