#language: pt

@realizar_cadastro
Funcionalidade: Cadastro - realizar um cadastro na plataforma
    Como usuario eu devo conseguir realizar o cadastro na plataforma

    Contexto: 
        * acessar a home do site
        * visualizar os elementos do site

    @acessar_pagina_cadastro
    Cenario: Cadastrando-se na plataforma
        Quando clico no botao para se cadastrar
        Entao valido as informacoes da tela de cadastro