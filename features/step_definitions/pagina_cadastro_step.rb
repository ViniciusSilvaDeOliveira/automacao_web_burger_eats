Quando ('clico no botao para se cadastrar') do 
    sleep(5)
    cadastro.btn_cadastro.click
end

Entao ('valido as informacoes da tela de cadastro') do
    expect(cadastro.dados).to be_truthy
    expect(cadastro.endereco).to be_truthy
    expect(cadastro.entregas).to be_truthy
    expect(cadastro.foto).to be_truthy
    sleep(5)
end

E ('preencho os dados') do
    cadastro.preencher_dados_usuarios
    sleep 10
end
  
E('preencho o endereco') do
    pending # Write code here that turns the phrase above into concrete actions
end
  
E('preencho o metodo de entrega') do
    pending # Write code here that turns the phrase above into concrete actions
end
  
E('adiciono a foto da CNH') do
    pending # Write code here that turns the phrase above into concrete actions
end
  
Quando('realizo o cadastro') do
    pending # Write code here that turns the phrase above into concrete actions
end
  
Entao('valido que o cadastro foi realizado com sucesso') do
    pending # Write code here that turns the phrase above into concrete actions
end