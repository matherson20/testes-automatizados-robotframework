***Settings***
Resource    base.robot

Test Setup      Nova sessão
Test Teardown   Encerra sessão


**Test Cases**
Marcando opção com Id
    Go To                               ${url}/checkboxes    
    Select checkbox                     id:thor
    checkbox Should Be Selected         id:thor 

Marcando opção com Css Selector
    [Tags]          ironman
    Go To                               ${url}/checkboxes    
    Select checkbox                     css:input[value= 'iron-man']
    checkbox Should Be Selected         css:input[value= 'iron-man']


Marcando opção com Xpath
    [Tags]          blackpant
    Go To                               ${url}/checkboxes    
    Select checkbox                     Xpath://*[@id='checkboxes']/input[7]
    checkbox Should Be Selected         Xpath://*[@id='checkboxes']/input[7]
    sleep                               4

