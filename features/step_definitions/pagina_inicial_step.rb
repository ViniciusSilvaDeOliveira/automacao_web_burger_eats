Dado ('acessar a home do site') do 
    visit('/')
    home.load
end

Quando ('visualizar os elementos do site') do 
    sleep(5)
    expect(page).to have_current_path('https://buger-eats.vercel.app/', url:true)
end

Entao ('valido alguns elementos da tela inicial') do 
    expect(home.btn_cadastrar).to be_truthy
    expect(home.titulo_img).to be_truthy
    expect(home.titulo_pagina.text).to eql("Seja um parceiro entregador pela Buger Eats")
end