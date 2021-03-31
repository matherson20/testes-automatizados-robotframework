*** Settings ***
Library     app.py



*** Test Cases ***
Deve retornar messagem de boas vindas
    ${result}=              Welcome             Matherson       
    Should Be Equal         ${result}           Olá Matherson, bem vindo ao curso básico de Robot Framework!

