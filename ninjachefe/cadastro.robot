***Settings***
Documentation  Suite dos Casos de Teste
Library     SeleniumLibrary     
Test Setup  Open Session    
Test Teardown   Close Session   

***Test Cases***

Cadastro Simples

    Dado que acesso a página principal
    Quando submeto o meu e-mail "rubens.franklin@gmail.com"
    Então devo ser autenticado

***Keywords***
Dado que acesso a página principal
    Go To       http://ninjachef-qaninja-io.umbler.net/         

Quando submeto o meu e-mail "${email}"

    Input Text      id:email        ${email}        
    Click Element   css:button[type=submit]         

Então devo ser autenticado
    Wait Until Page Contains Element        class:dashboard     

##hooks

Open Session
    Open browser    about:blank     chrome     

Close Session 

    Close browser   

