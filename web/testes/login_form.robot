***Settings***
Resource    base.robot

Test Setup      Nova sessão
Test Teardown   Encerra sessão

***Keywords***
login with
    [Arguments]             ${uname}        ${password}

    input Text              css:input[name=username]  ${uname} 
    input Text              css:input[name=password]  ${password}

should contains login alert
    [Arguments]             ${expect_menssege}
    ${messenge}=            Get WebElement                  id:flash
    Should Contain          ${messenge.text}                 ${expect_menssege}
**Test Cases**

Login com sucesso
    Go To                           ${url}/login
    login with                      stark   jarvis!
    Click Element                   class:btn-login
    should contains login alert     Olá, Tony Stark. Você acessou a área logada!
            
Senha inválida
    Go To                           ${url}/login
    login with                      stark   jarvis
    Click Element                   class:btn-login
    should contains login alert     Senha é invalida!

Usuário inválido
    Go To                           ${url}/login
    login with                      starki   jarvis!
    Click Element                   class:btn-login
    should contains login alert     O usuário informado não está cadastrado!

            