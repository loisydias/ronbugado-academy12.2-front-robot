*** Settings ***

Resource    ../resource/companyweb.resource
Library     SeleniumLibrary
Documentation         Company Web
Suite Setup           Abrir o navegador
Suite Teardown        Close Browser



*** Test Cases ***
[CT01]: Login com usuário sysadmin

    Abrir o navegador
    Logar com sysadmin

[CT02]: Listar empresas
    # Logar com sysadmin
    Clicar no botão cadastros
    Clicar no botão empresa

[CT03]: Clicar no botão novo cadastro
    Clicar no botão empresa
    Clicar no botão novo cadastro

[CT04]: Verificar form de cadastro

    Verificar form de cadastro

[CT05]: Inserir dados nova empresa
    Verificar form de cadastro
    Inserir dados nova empresa

[CT06]: Clicar no botao SALVAR NOVO
    Salvar os dados

[CT07]: Verificar se a mensagem de erro é exibida
    Mensagem de erro ao clicar no botao SALVAR
    













