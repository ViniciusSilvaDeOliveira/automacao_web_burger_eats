class PaginaInicial < SitePrism::Page
    set_url('/')
    element :btn_cadastrar, :xpath, '//*[@id="page-home"]/div/main/a'
    element :titulo_pagina, :xpath, '//*[@id="page-home"]/div/main/h1'
    element :titulo_img,    :xpath, '//*[@id="page-home"]/div/header/img'
end