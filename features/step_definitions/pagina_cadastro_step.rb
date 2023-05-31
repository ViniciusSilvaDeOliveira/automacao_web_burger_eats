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