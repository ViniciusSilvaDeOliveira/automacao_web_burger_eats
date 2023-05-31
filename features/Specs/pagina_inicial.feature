#language: pt

@verificar_pagina_principal
Funcionalidade: Home - verificar se acessou a pagina inicial
    Como usuário da aplicacao
    Quero poder acessar as paginas do site por meio da url do mkp
    Para validar a integridade da mesma na home

    Contexto: 
        * acessar a home do site

    @validar_elementos_tela
    Cenario: validar os elementos da tela inicial
        Quando visualizar os elementos do site
        Entao valido alguns elementos da tela inicial