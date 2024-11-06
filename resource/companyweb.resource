*** Settings ***
Library    SeleniumLibrary


*** Variables ***
#login
${urlbase}                https://automacao.qacoders.dev.br/login
${emailInput}             id=email
${emailValido}            sysadmin@qacoders.com
${senhaInput}             id=password
${senhaValida}            1234@Test
${botaoInput}             id=login
${botaocadastro}          Cadastros

#cadastro empresa
${companylist}            id=Empresa
${botaocadastro}          id=Cadastros
${novocadastro}           id=Novo Cadastro
${formcadastro}           //div[@class='css-1gibqcr'][contains(.,'Novo CadastroDados da EmpresaRazão Social*Nome Fantasia*Email*CNPJ*Telefone*Descrição do serviço*Nome do Responsável*EndereçoCEP*País*Cidade*Estado*Bairro*Rua*Número do Imóvel*Complemento*SALVAR NOVOCANCELAR')]
${InputcompanyName}       id=companyName

${usuarioslist}           id=Usuários
${nomefantasiainput}      id=fantasyName
${emailcompanyInput}      id=companyMail
${CNPJInput}              id=matriz
${razaosocialnova}        RON BUGADO TESTE LTDA
${fantasianova}           RON BUGADO
${telefoneInput}          id=telephone
${descricaoInput}         id=serviceDescription
${responsavelInput}       id=fullName
${cepInput}               id=zipCode
${paisInput}              id=country
${cidadeInput}            id=city
${estadoInput}            id=state
${bairroInput}            id=district
${ruaInput}               id=street
${numeroimovel}           id=number
${complementoimovel}      id=complement

${botaosalvarnovo}        id=save
${mensagemerro}        //div[contains(@class,'MuiPaper-root MuiPaper-elevation MuiPaper-rounded MuiPaper-elevation0 MuiAlert-root MuiAlert-standardError MuiAlert-standard css-laiely')]
           

#editar cadastro

${idempresa}              //p[contains(.,'Minha empresa')]
${editarempresa}          id=companyName
${editarendereco}         id=zipCode


*** Keywords ***
# CT01: login com usuário sysadmin
Abrir o navegador
   
    Open Browser    browser=headlesschrome
    Maximize Browser Window

    # Close Browser


Logar com sysadmin

    Go To    url=${urlBase}
    Wait Until Element Is Visible        locator=${emailInput}
    Input Text                           locator=${emailInput}        text=${emailValido}
    Wait Until Element Is Visible        locator=${senhaInput}
    Input Password                       locator=${senhaInput}        password=${senhaValida}
    Wait Until Element Is Visible        locator=${botaoInput}
    Click Button                         locator=${botaoInput}                     
    Wait Until Page Contains             text=Logout
    Sleep    5    
    Capture Page Screenshot


# CT02: listar empresas
Clicar no botão cadastros
     Wait Until Element Is Visible    locator=${botaocadastro}
     Click Element                    locator=${botaocadastro}
     Sleep    3 


# CT03: Cadastrar nova empresa
Clicar no botão empresa
    Wait Until Element Is Visible    locator=${companylist}
    Click Element                    locator=${companylist}
    Wait Until Page Contains         text=Empresa
    Sleep    2

Clicar no botão novo cadastro
    Wait Until Element Is Visible    locator=${novocadastro}    
    Click Button                     locator=${novocadastro} 
    Wait Until Page Contains         text=Novo Cadastro
    Sleep    2
Verificar form de cadastro
    Wait Until Element Is Visible    locator=${formcadastro}
    Wait Until Page Contains         text=Dados da Empresa
    Sleep    2


Inserir dados nova empresa
    Wait Until Element Is Visible    locator=${InputcompanyName}
    Click Element                    locator=${InputcompanyName}    
    Wait Until Page Contains         text=Razão Social
    Input Text                       locator=${InputcompanyName}            text=${razaosocialnova}
   
    
    Wait Until Element Is Visible    locator=${nomefantasiainput}
    Click Element                    locator=${nomefantasiainput}    
    Wait Until Page Contains         text=Nome Fantasia
    Input Text                      locator=${nomefantasiainput}            text=${fantasianova}
  

    
    Wait Until Element Is Visible    locator=${emailcompanyInput}
    Click Element                    locator=${emailcompanyInput}   
    Wait Until Page Contains         text=Email
    Input Text                      locator=${emailcompanyInput}            text=ronbugado@teste.qacoders.com.br


    Wait Until Element Is Visible    locator=${CNPJInput}
    Click Element                    locator=${CNPJInput}    
    Wait Until Page Contains         text=CNPJ
    Input Text                       locator=${CNPJInput}                   text=23050078000192
   
    
    Wait Until Element Is Visible    locator=${telefoneInput}
    Click Element                    locator=${telefoneInput} 
    Wait Until Page Contains         text=Telefone
    Input Text                       locator=${telefoneInput}               text=11997959412
    

    Wait Until Element Is Visible    locator=${descricaoInput}
    Click Element                    locator=${descricaoInput}   
    Wait Until Page Contains         text=Descrição do serviço
    Input Text                      locator=${descricaoInput}               text=AUTOMACAO RON BUGADO
 

    Wait Until Element Is Visible    locator=${responsavelInput}
    Click Element                    locator=${responsavelInput}
    Wait Until Page Contains         text=Nome do Responsável
    Input Text                       locator=${responsavelInput}            text=Aline
    

    Wait Until Element Is Visible    locator=${cepInput}  
    Click Element                    locator=${cepInput}  
    Wait Until Page Contains         text=CEP
    Input Text                       locator=${cepInput}                    text=05010500



    Wait Until Element Is Visible    locator=${paisInput} 
    Click Element                    locator=${paisInput} 
    Wait Until Page Contains         text=País
    Input Text                       locator=${paisInput}                   text=Brasil

    
    Wait Until Element Is Visible    locator=${cidadeInput}  
    Click Element                    locator=${cidadeInput}  
    Wait Until Page Contains         text=Cidade
    Input Text                       locator=${cidadeInput}                  text=São Paulo


    Wait Until Element Is Visible    locator=${estadoInput}  
    Click Element                    locator=${estadoInput}   
    Wait Until Page Contains         text=Estado
    Input Text                       locator=${estadoInput}                  text=SP

    Wait Until Element Is Visible    locator=${estadoInput}  
    Click Element                    locator=${estadoInput}   
    Wait Until Page Contains         text=Estado
    Input Text                       locator=${estadoInput}                  text=SP


    Wait Until Element Is Visible    locator=${bairroInput} 
    Click Element                    locator=${bairroInput}  
    Wait Until Page Contains         text=Bairro
    Input Text                       locator=${bairroInput}                  text=Morumbi

    Wait Until Element Is Visible    locator=${ruaInput} 
    Click Element                    locator=${ruaInput}  
    Wait Until Page Contains         text=Rua
    Input Text                       locator=${ruaInput}                     text=Avenida Morumbi

    Wait Until Element Is Visible    locator=${numeroimovel} 
    Click Element                    locator=${numeroimovel} 
    Wait Until Page Contains         text=Número do Imóvel
    Input Text                       locator=${numeroimovel}                  text=30

    Wait Until Element Is Visible    locator=${complementoimovel}
    Click Element                    locator=${complementoimovel} 
    Wait Until Page Contains         text=Complemento
    Input Text                       locator=${complementoimovel}              text=Loja 3


Salvar os dados

    Wait Until Element Is Visible    locator=${botaosalvarnovo}    
    Click Button                     locator=${botaosalvarnovo} 
    Wait Until Page Contains         text=SALVAR NOVO           
    Sleep    1


Mensagem de erro ao clicar no botao SALVAR
# Falhará o teste se a mensagem não aparecer
    Wait Until Element Is Visible        locator=${mensagemerro}
    Element Should Be Visible            locator=${mensagemerro}   
    Capture Page Screenshot
