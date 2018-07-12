*** Settings ***

*** Keywords ***
usuario con credenciales correctas
    log  precondicion-credenciales OK  console=true

usuario introduce el username
    log  intro username OK  console=true

usuario introduce la contraseña
    log  intro contraseña OK  console=true

le aparece el profile de usuario
    log  pantalla user profile OK  console=true

*** Test Cases ***
Usuario accede al sistema con credenciales correctas
    [Tags]  Gherkin
    # Contexto inicial Given en Gherkin
    Given usuario con credenciales correctas
    When usuario introduce el username
    And usuario introduce la contraseña
    Then le aparece el profile de usuario