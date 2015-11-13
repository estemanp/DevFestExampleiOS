Feature: Login feature

Scenario: como un usuario trato de iniciar sesion sin ingresar datos
    Given inicia la aplicacion
    When se inicializa la ventana de "Login"
    Then presiono el boton "Ingresar"
    And observo el texto "Por favor ingrese sus datos"

Scenario: como un usuario trato de iniciar sesion solo con el usuario
    Given inicia la aplicacion
    When se inicializa la ventana de "Login"
    Then ingresar el texto "Juan" en el campo de texto "txtLogin"
    And presiono el boton "Ingresar"
    And observo el texto "Por favor ingrese sus datos"

Scenario: como un usuario trato de iniciar sesion solo con la clave
    Given inicia la aplicacion
    When se inicializa la ventana de "Login"
    Then ingresar el texto "123456" en el campo de texto "txtPassword"
    And presiono el boton "Ingresar"
    And observo el texto "Por favor ingrese sus datos"

Scenario: como un usuario  inicio sesion con datos incorrectos
    Given inicia la aplicacion
    When se inicializa la ventana de "Login"
    Then ingresar el texto "Juan25" en el campo de texto "txtLogin"
    Then ingresar el texto "789123" en el campo de texto "txtPassword"
    And presiono el boton "Ingresar"
    And observo el texto "Error en el usuario o la clave"

Scenario: como un usuario  trato de iniciar sesion pero me equivoque en la contraseña
    Given inicia la aplicacion
    When se inicializa la ventana de "Login"
    Then ingresar el texto "Juan" en el campo de texto "txtLogin"
    Then ingresar el texto "12345" en el campo de texto "txtPassword"
    And presiono el boton "Ingresar"
    And observo el texto "Error en el usuario o la clave"

Scenario: Como un usuario inicio sesion correctamente
    Given inicia la aplicacion
    When se inicializa la ventana de "Login"
    Then ingresar el texto "Juan" en el campo de texto "txtLogin"
    Then ingresar el texto "123456" en el campo de texto "txtPassword"
    And presiono el boton "Ingresar"
    Then se inicializa la ventana de "landing"
    And observo el texto "Bienvenido este es un ejemplo"

Scenario: Como un usuario inicio sesion con otra cuenta
    Given inicia la aplicacion
    When se inicializa la ventana de "Login"
    Then ingresar el texto "Angela" en el campo de texto "txtLogin"
    Then ingresar el texto "105383" en el campo de texto "txtPassword"
    And presiono el boton "Ingresar"
    Then se inicializa la ventana de "landing"
    And observo el texto "Bienvenido este es un ejemplo"

