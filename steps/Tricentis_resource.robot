*** Settings ***
Resource                  ../config/config.robot
Resource                  ../steps/Metodo_steps.robot


***Variables***

${Selecionar_Veiculo}      //select[contains(@name,'Make')]
${Veiculo}                 //option[@value='Mercedes Benz']
${Desempenho}              //input[contains(@name,'[kW]')]
${Texto}                   1500
${Ano_Fabricação}          //input[@name='Date of Manufacture']
${Date}                    06/21/2013
${Acentos}                 //select[contains(@name,'Number of Seats')]
${Quantidade}              //option[@value='5'][contains(.,'5')]
${Posição}                 //label[@class='main'][contains(.,'volante à direita')]
${Botão}                   sim
${Botão2}                  não
${Comb}                    //label[contains(.,'Fuel Type')]
${Tipo}                    //option[contains(.,'Diesel')]
${Tipo2}                   //option[contains(.,'Gas')]
${Valor_Mercado}           //input[contains(@name,'List Price')]
${Total}                   13500
${Licensa}                 //input[contains(@name,'License Plate Number')]
${Placa}                   AON 7172
${Km}                      //input[contains(@name,'Annual Mileage')]
${Atual}                   100000
${Seguir}                  //button[@name='Next (Enter Insurant Data)'][contains(.,'Next »')]
${Dados_Seguro}            //a[contains(.,'Enter Insurant Data7')]
${Campo_Nome}              //input[contains(@name,'First Name')]
${Nome}                    Patricia
${Campo_Last_Name}         //input[contains(@name,'Last Name')]
${Last}                    Miranda
${Birth}                   //input[@name='Date of Birth']
${Niver}                   10/06/1970
${Male}                   //label[@class='ideal-radiocheck-label'][contains(.,'Male')]
${Female}                 //label[@class='ideal-radiocheck-label'][contains(.,'Female')]
${Stret}                  //input[contains(@id,'streetaddress')]
${Rua}                    Pedro André 20
${Cidade}                 //input[contains(@name,'City')]
${Pais}                   //select[contains(@name,'Country')]
${Ceep}                   04349
${Local}                  //option[@value='Angola'][contains(.,'Angola')]
${Campo_Ceep}             //input[contains(@name,'Zip Code')]
${City}                   São Paulo
${Campo_Ocupation}        //select[contains(@name,'Occupation')]
${Profissão}              //option[@value='Employee'][contains(.,'Employee')]
${Hobbie}                 //label[@class='main'][contains(.,'Hobbies')]
${Salto}                  //label[@class='ideal-radiocheck-label'][contains(.,'Cliff Diving')]
${Céu}                    //label[@class='ideal-radiocheck-label'][contains(.,'Bungee Jumping')]
${Campo_Email}            //input[contains(@name,'Website')]
${Site}                   www.gogle
${Foto}                  //input[@id='picture']
${Seguinte}              //a[contains(@name,'Enter Product Data')]
${Star_Date}             //input[contains(@name,'Start Date')]
${Inicio}                05/06/2023
${NextBtn}               //button[@name='Next (Enter Product Data)'][contains(.,'Next »')]
${Insurance}             //select[contains(@name,'Insurance Sum')]
${Valor}                 //option[@value='35000000']
${Merit}                 //label[@class='main'][contains(.,'Merit Rating')]
${Bonus}                 //option[contains(@value,'Malus 12')]
${Campo_Dados}          //select[@name='Damage Insurance']
${Cobertura}            //option[@value='Full Coverage']
${Opcao}                //label[contains(.,'Optional Products')]
${Euro}                 //label[@class='ideal-radiocheck-label'][contains(.,'Euro Protection')]
${Carro}                //select[contains(@name,'Courtesy Car')]
${Escolha}              //option[@value='Yes'][contains(.,'Yes')]
${Proximo}              //button[@name='Next (Select Price Option)']
${Validar}              //a[contains(@name,'Select Price Option')]
${Qote}                //a[contains(@name,'Select Price Option')]





*** Keywords ***

Acessar Home Page
  Go To    ${Url} 
  sleep    2


Selecionar Veiculo
    Sleep                          2
    Wait Until Element Is Visible      ${Selecionar_Veiculo}
    Capture Page Screenshot
    Click Element                      ${Veiculo} 
    Capture Page Screenshot


Desempenho do motor 
    Wait Until Element Is Visible       ${Desempenho} 
    Capture Page Screenshot    
    Input Text                          ${Desempenho}        ${Texto}
    Capture Page Screenshot
    Wait Until Element Is Visible       ${Ano_Fabricação}
    Capture Page Screenshot
    Input Text                          ${Ano_Fabricação}      ${Date}
    Capture Page Screenshot     

Numero de Passageiros                             
    Sleep                              2
    Wait Until Element Is Visible      ${Acentos}
    Capture Page Screenshot
    Click Element                      ${Acentos}     
    Capture Page Screenshot    
    Click Element                      ${Quantidade}
    Capture Page Screenshot


Verificar Combustivel '${Fuel}'
    Wait Until Element Is Visible     ${Comb}
    Capture Page Screenshot

Valor 
    Wait Until Element Is Visible          ${Valor_Mercado}
    Capture Page Screenshot
    Input Text                             ${Valor_Mercado}      ${Total}
    Capture Page Screenshot

Verificar Placa
    Wait Until Element Is Visible       ${Licensa}
    Capture Page Screenshot
    Input Text                          ${Licensa}           ${Placa}
    Capture Page Screenshot


Page Should ContainKm Atual 
   Wait Until Element Is Visible       ${Km}
   Capture Page Screenshot
   Input Text                          ${Km}         ${Atual}
   Capture Page Screenshot

Próximo
   Sleep                              2
   Wait Until Element Is Visible       ${Seguir} 
   Capture Page Screenshot
   Click Element                       ${Seguir} 
   Capture Page Screenshot
   Wait Until Element Is Visible       ${Campo_Nome}
   Capture Page Screenshot


Inserir Dados do Seguro 
    Sleep                              2
    Wait Until Element Is Visible     ${Campo_Nome}
    Capture Page Screenshot
    Input Text                        ${Campo_Nome}       ${Nome} 
    Capture Page Screenshot


Preencher Sobrenome
   Wait Until Element Is Visible      ${Campo_Last_Name} 
   Capture Page Screenshot
   Input Text                         ${Campo_Last_Name}        ${Last}
   Capture Page Screenshot

Data de Nascimento 
    Wait Until Element Is Visible      ${Birth} 
    Capture Page Screenshot 
    Input Text                         ${Birth}       ${Niver} 
    Capture Page Screenshot

Selecione Genero "${Gender}"
    Capture Page Screenshot
    Escolha o Genero     ${Gender}


Endereço
    Wait Until Element Is Visible       ${Stret}
    Capture Page Screenshot
    Input Text                          ${Stret}                ${Rua}
    Capture Page Screenshot

Selecione Pais
    Wait Until Element Is Visible       ${Pais}
    Capture Page Screenshot
    Click Element                       ${Local}
    Capture Page Screenshot

Codigo Postal
    Wait Until Element Is Visible       ${Campo_Ceep} 
    Capture Page Screenshot
    Input Text                          ${Campo_Ceep}      ${Ceep}
    Capture Page Screenshot

Cidade
    Wait Until Element Is Visible      ${Cidade}
    Capture Page Screenshot
    Input Text                         ${Cidade}        ${City}
    Capture Page Screenshot

Profissão
    Wait Until Element Is Visible    ${Campo_Ocupation}
    Capture Page Screenshot
    Click Element                    ${Profissão}
    Capture Page Screenshot

Selecione Hobbies "${Lazer}"
    Capture Page Screenshot
    Escolha Hobbies      ${Lazer}

E-mail
    Wait Until Element Is Visible        ${Campo_Email}
    Capture Page Screenshot
    Input Text                           ${Campo_Email}      ${Site} 
    Capture Page Screenshot

Foto
    Wait Until Element Is Visible        ${Foto} 
    Capture Page Screenshot


Selecione Proximo 
   Sleep                              2
   Wait Until Element Is Visible     ${NextBtn}  
   Capture Page Screenshot
   Click Element                     ${NextBtn} 
   Capture Page Screenshot
   Wait Until Element Is Visible     ${Star_Date}
   Capture Page Screenshot

Campo de data Inicio 
   Wait Until Element Is Visible     ${Star_Date}
   Capture Page Screenshot
   Input Text                        ${Star_Date}       ${Inicio} 
   Capture Page Screenshot

Valor do Seguro
   Wait Until Element Is Visible     ${Insurance} 
   Capture Page Screenshot
   Click Element                     ${Insurance} 
   Capture Page Screenshot
   Wait Until Element Is Visible     ${Valor}
   Click Element                     ${Valor}
   Capture Page Screenshot
   Wait Until Element Is Visible     ${Merit}
   Capture Page Screenshot
   Click Element                     ${Merit}            
   Capture Page Screenshot
   Wait Until Element Is Visible     ${Bonus}
   Capture Page Screenshot
   Click Element                     ${Bonus}
   Capture Page Screenshot

Dados da Cobertura
    Wait Until Element Is Visible      ${Campo_Dados}
    Capture Page Screenshot
    Click Element                      ${Campo_Dados}
    Wait Until Element Is Visible      ${Cobertura}
    Click Element                      ${Cobertura}
    Capture Page Screenshot
    Wait Until Element Is Visible      ${Opcao}
    Capture Page Screenshot
    Click Element                      ${Euro} 
    Capture Page Screenshot

Carro Cortesia
    Wait Until Element Is Visible     ${Carro}
    Capture Page Screenshot
    Click Element                     ${Carro}
    Wait Until Element Is Visible     ${Escolha}
    Capture Page Screenshot
    Click Element                     ${Escolha}

Seguinte
    Wait Until Element Is Visible     ${Proximo} 
    Capture Page Screenshot
    Click Button                      ${Proximo}
    Capture Page Screenshot
    Wait Until Element Is Visible     ${Validar}
    Capture Page Screenshot
    Sleep                             20

Cotação
    Wait Until Element Is Visible    ${Qote}  
    Capture Page Screenshot
    Click Element                    ${Qote}  
    Capture Page Screenshot
    Sleep                             4






    



























        





    
        


