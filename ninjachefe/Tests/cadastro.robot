***Settings***
Documentation  Suite dos Casos de Teste
Resource        ../resources/base.robot  
Test Setup  Open Session    
Test Teardown   Close Session   

***Test Cases***

Cadastro Simples

    Dado que acesso a página principal
    Quando submeto o meu e-mail "rubens.franklin@gmail.com"
    Então devo ser autenticado

Email Incorreto

    Dado que acesso a página principal
    Quando submeto o meu e-mail "rubens.franklin&gmail.com"
    Então devo ver a mensagem "Oops. Informe um email válido!"


Email Não Informado

    Dado que acesso a página principal
    Quando submeto o meu e-mail "${EMPTY}"
    Então devo ver a mensagem "Oops. Informe um email válido!"
