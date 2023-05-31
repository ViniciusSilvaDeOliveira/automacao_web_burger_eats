#informando o caminho da nossa classe que será instanciada
Dir[File.join(File.dirname(__FILE__), '../pages_objects/*_page.rb')].each { |file| require file } 

module PageObjects
    def home
        @home ||= PaginaInicial.new
    end
end