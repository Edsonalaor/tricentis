***Settings***
Resource                 ./steps/Tricentis_resource.robot
Resource                  ../steps/Metodo_steps.robot


***Keywords***



Escolha Combustivel 
    [Arguments]       ${Comb}

    IF               '${Comb}' == 'Diesel'
        Click Element        ${Tipo}
    ELSE IF           '${Comb}' == 'Gas'
        Click Element        ${Tipo2}        
    END

Escolha o Genero
    [Arguments]      ${Gender}

    IF        '${Gender}'== 'Male' 
        Click Element     ${Male}
    ELSE IF    '${Gender}' == 'Female'
        Click Element    ${Female}
    END       

Escolha Hobbies    
    [Arguments]     ${Lazer}

    IF        '${Lazer}'== 'Salto' 
        Click Element     ${Salto}
    ELSE IF    '${Lazer}'== 'Outros'
        Click Element   ${Céu}
    END       

# Escolha Star   
#     [Arguments]     ${Ano}

#     IF        '${Ano}'== 'Inicio' 
#         Click Element     ${Inicio}
#     ELSE IF    '${Ano}'== 'Outros'
#         Click Element   ${Céu}
#     END       

# Inserir Dados do Seguro 
#     [Arguments]          ${Dono}

#     IF                   ${${Dono}}
#         Click Element    ${Campo_Nome} 
#     ELSE IF              ${${Dono}}
        
#     END
    
