*** Settings ***
Documentation             Esse teste preenche dados do site tricentis
  ###                    Comando para rodar a suite de teste: robot -d .\Results   Teste\tricentis_test.robot

Resource                  ../steps/Tricentis_resource.robot
Resource                  ../config/config.robot

Test Setup               Abrir Navegador
# Test Teardown            Fechar Navegador

*** Test Cases ***

CT01- Preencher dados do veiculo
   [Documentation]       Esse teste realiza o cadastro de veiculos
   [Tags]                Cadastro

  Acessar Home Page
  Selecionar Veiculo
  Desempenho do motor 
  Numero de Passageiros
  Verificar Combustivel 'Diesel'
  Valor 
  Verificar Placa
  Page Should ContainKm Atual
  Próximo
  Inserir Dados do Seguro 
  Preencher Sobrenome 
  Data de Nascimento 
  Selecione Genero "Female"
  Endereço
  Selecione Pais
  Codigo Postal
  Cidade
  Profissão
  Selecione Hobbies "Salto"
  E-mail
  Foto
  Selecione Proximo
  Campo de data Inicio
  Valor do Seguro
  Dados da Cobertura
  Carro Cortesia
  Seguinte
  Cotação


