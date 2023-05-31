require 'cucumber' #informar todas as dependencias que vai rodar junto com o projeto, até a linha 7
require 'capybara/cucumber'
require 'capybara/dsl'
require 'capybara/rspec/matchers'
require 'capybara'
require 'selenium-webdriver'
require 'site_prism'
require 'pry'
require_relative 'mapa_de_elementos' #referente a configuracao do Page Objects

World(PageObjects) #referente a configuracao do Page Objects
World(Capybara::DSL)
World(Capybara::RSpecMatchers)

Capybara.configure do |config|
    config.default_driver = :selenium_chrome #configura para usar o Google chrome
    config.app_host = 'https://buger-eats.vercel.app' #passa o link que vamos automatizar
    config.default_max_wait_time = 5 #tempo padrão que vamos esperar os elementos na tela
end