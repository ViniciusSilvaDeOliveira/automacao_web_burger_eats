class PaginaCadastro < SitePrism::Page
    set_url('/')
    element :dados,        :xpath, '//*[@id="page-deliver"]/form/fieldset[1]'
    element :endereco,     :xpath, '//*[@id="page-deliver"]/form/fieldset[2]'
    element :entregas,     :xpath, '//*[@id="page-deliver"]/form/fieldset[3]'
    element :foto,         :xpath, '//*[@id="page-deliver"]/form/div'
    element :btn_cadastro, :xpath, '//*[@id="page-home"]/div/main/a'
    element :campo_nome,   :xpath, '//*[@id="page-deliver"]/form/fieldset[1]/div[1]/div[1]/input'
    element :campo_cpf,    :xpath, '//*[@id="page-deliver"]/form/fieldset[1]/div[1]/div[2]/input'
    element :campo_email,  :xpath, '//*[@id="page-deliver"]/form/fieldset[1]/div[2]/div[1]/input'
    element :campo_whats,  :xpath, '//*[@id="page-deliver"]/form/fieldset[1]/div[2]/div[2]/input'
    element :campo_cep,            'input[placeholder="CEP"]'
    element :campo_numero,         'input[placeholder="Número"]'
    element :campo_rua,            'input[placeholder="Rua"]'
    element :campo_complento,      'input[placeholder="Complemento"]'
    element :campo_moto,           'ul [alt="Moto"]'
    element :campo_bicicleta,      'ul [alt="Bicicleta"]'
    element :campo_van,            'ul [alt="Van/Carro"]'

    def preencher_dados_usuarios
        campo_nome.send_keys('Vinicius Junior')
        campo_cpf.send_keys('111.222.333-44')
        campo_email.send_keys('vinicius@teste.com')
        campo_whats.send_keys('11378545254')
    end

    def preencher_endereco_usuarios
        campo_cep.send_keys('03527-000')
        campo_numero.send_keys('1234')
        campo_complento.send_keys('Casa A')
        click_button "Buscar CEP"
    end

    def preencher_metodo_entrega(parametro)
        if parametro.eql?("Moto")
            campo_moto.clck
        elsif parametro.eql?("Bicleta")
            campo_bicicleta.click
        else
            campo_van.click
        end
    end
end