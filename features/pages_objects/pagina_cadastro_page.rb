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

    def preencher_dados_usuarios
        campo_nome.send_keys('Vinicius Junior')
        campo_cpf.send_keys('111.222.333-44')
        campo_email.send_keys('vinicius@teste.com')
        campo_whats.send_keys('11378545254')
    end
end