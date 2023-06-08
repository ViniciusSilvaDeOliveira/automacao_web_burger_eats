Quando ('clico no botao para se cadastrar') do 
    cadastro.btn_cadastro.click
end

Entao ('valido as informacoes da tela de cadastro') do
    expect(cadastro.dados).to be_truthy
    expect(cadastro.endereco).to be_truthy
    expect(cadastro.entregas).to be_truthy
    expect(cadastro.foto).to be_truthy
end

E ('preencho os dados {string}') do |cenario|
    cadastro.preencher_dados_usuarios
end
  
E('preencho o endereco {string}') do |cenario|
    cadastro.preencher_endereco_usuarios
    expect(cadastro.campo_rua.value).to eql("Avenida Aricanduva")
end
  
E('preencho o metodo de entrega {string}') do |cenario|
    cadastro.preencher_metodo_entrega(cenario)
    sleep 5
end
  
E('adiciono a foto da CNH') do
    pending # Write code here that turns the phrase above into concrete actions
end
  
Quando('realizo o cadastro') do
    pending # Write code here that turns the phrase above into concrete actions
end
  
Entao('valido que o cadastro foi realizado com sucesso {string}') do |cenario|
    pending # Write code here that turns the phrase above into concrete actions
end