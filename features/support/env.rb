require 'rspec'
require 'capybara'
require 'capybara/cucumber'
require 'site_prism'
require 'cucumber'
require 'selenium-webdriver'
require 'faker'

@Max_time = 30 

#configura pra chamar o webdriver
Capybara.register_driver :site_prism do |app|
    
    options = Selenium::WebDriver::Chrome::Options.new
    options.add_argument('--ignore-certificate-errors')
    options.add_argument('--disable-popup-blocking')
    options.add_argument('--disable-translate')
    options.add_argument('--enable-logging')   
    #options.add_argument('--headless') unless ENV['UI']# rodar o navegador em background
    
    #options.add_argument("excludeSwitches", ["enable-logging"])
    # => add_experimental_option("excludeSwitches", ['enable-logging']))
    
    Capybara::Selenium::Driver.new(app, browser: :chrome, options: options)

end

Capybara.configure do |config|
    config.run_server = false
    Capybara.default_driver = :site_prism
    Capybara.page.driver.browser.manage.window.maximize
    config.default_max_wait_time = @Max_time
    config.app_host = 'http://www.automationpractice.com/index.php'  #Direciona a página principal.  
end
