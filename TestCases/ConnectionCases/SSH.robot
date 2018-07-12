*** Settings ***
Library  SSHLibrary
Suite Setup  Open connection and log in
Suite Teardown  Close all connections

*** Variables ***
${HOST}  localhost
${USERNAME}  test
${PASSWORD}  test

*** Keywords ***
Open connection and log in
    Open Connection  ${HOST}
    login  ${USERNAME}  ${PASSWORD}

*** Test Cases ***
Ejecutar comando y comprobar resultado
    [Documentation]  Ejecutar comando
    Execute Command  echo Esta es una prueba de RF y SSH