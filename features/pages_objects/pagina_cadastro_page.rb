class PaginaCadastro < SitePrism::Page
    set_url('/')
    element :dados,        :xpath, '//*[@id="page-deliver"]/form/fieldset[1]'
    element :endereco,     :xpath, '//*[@id="page-deliver"]/form/fieldset[2]'
    element :entregas,     :xpath, '//*[@id="page-deliver"]/form/fieldset[3]'
    element :foto,         :xpath, '//*[@id="page-deliver"]/form/div'
    element :btn_cadastro, :xpath, '//*[@id="page-home"]/div/main/a'
end