*** Settings ***
Library  Telnet
Library  Collections

*** Variables ***
${ip}  64.13.139.230
${port}  76

*** Test Cases ***
Conectarse a sistema via telnet
    Open Connection  ${ip}  ${port}
    Set Prompt   user
    Set Newline  CRLF
    read until  user

Obtener informacion del sistema conectado
    ${out}=  Execute Command  HELP
    ${item}=  Get From List  ${out}  0
    log  ${out}  console=true
    #should match regexp  ${item}  /^_3/

Desconectarse del sistema remoto
    Close All Connections