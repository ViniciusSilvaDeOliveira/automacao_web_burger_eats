#language: pt

@pagina_cadastro
Funcionalidade: Cadastro - realizar um cadastro na plataforma
    Como usuario eu devo conseguir realizar o cadastro na plataforma

    Contexto: 
        * acessar a home do site
        * visualizar os elementos do site
        * clico no botao para se cadastrar

    @acessar_pagina_cadastro
    Cenario: Cadastrando-se na plataforma
        Entao valido as informacoes da tela de cadastro

    @realizar_cadastro
    Esquema do Cenario: Realizar cadastro na plataforma BugerEats
        E preencho os dados 
        E preencho o endereco
        E preencho o metodo de entrega <cenario>
        E adiciono a foto da CNH <foto>
        Quando realizo o cadastro 
        Entao valido que o cadastro foi realizado com sucesso 
        Exemplos: 
            | cenario     | foto      |
            | "Moto"      | "cnh.png" |
            | "Bicleta"   | "cnh.png" | 
            | "Van/Carro" | "cnh.png" |
