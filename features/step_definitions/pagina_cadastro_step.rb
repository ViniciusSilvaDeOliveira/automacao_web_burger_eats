Quando ('clico no botao para se cadastrar') do 
    cadastro.btn_cadastro.click
end

Entao ('valido as informacoes da tela de cadastro') do
    expect(cadastro.dados).to be_truthy
    expect(cadastro.endereco).to be_truthy
    expect(cadastro.entregas).to be_truthy
    expect(cadastro.foto).to be_truthy
end

E ('preencho os dados') do
    cadastro.preencher_dados_usuarios
end
  
E('preencho o endereco') do
    cadastro.preencher_endereco_usuarios
    sleep 2
    expect(cadastro.campo_rua.value).to eql("Avenida Aricanduva")
end
  
E('preencho o metodo de entrega {string}') do |cenario|
    cadastro.preencher_metodo_entrega(cenario)
    sleep 2
end
  
E('adiciono a foto da CNH') do |table|
    @imgs = table.rows_hash
    img = Dir.pwd + "/features/support/fixtures/img/" + @imgs[:img]
    find('p [stroke="currentColor"]', visible: false).set img
end
  
Quando('realizo o cadastro') do
    puts 'passei aqui'
end
  
Entao('valido que o cadastro foi realizado com sucesso') do
    puts 'passei aqui'
end