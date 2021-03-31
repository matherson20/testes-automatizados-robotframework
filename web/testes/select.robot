***Settings***
Resource    base.robot

Test Setup      Nova sessão
Test Teardown   Encerra sessão


**Test Cases**
Selecionar pelo texto e validar pelo valor
    Go To                               ${url}/dropdown  
    Select From List By Label           class:avenger-list           Scott Lang 
    ${selected}=                        Get Selected List Value      class:avenger-list
    Should Be Equal                     ${selected}                  7

Selecionar pelo valor
    Go To                               ${url}/dropdown   
    Select From List By Value           Id:dropdown                  6
    ${selected}=                        Get Selected List Label      Id:dropdown  
    Should Be Equal                     ${selected}                  Loki
 