Selenium::WebDriver::Chrome::Service.driver_path="/usr/bin/chromedriver"

Dado('o site do facebook') do
    @driver = Selenium::WebDriver.for :chrome

    @driver.get "http://www.facebook.com"
end

Quando('apresentar o campo Criar Nova Conta') do
    #@driver.find_element(:xpath, '//*[@id="u_0_2_bq"]').click
end
  
Quando('Preencer os campos e acionar o comando Criar') do
    @driver.find_element(:id, "email").click
    @driver.find_element(:id, "email").clear
    @driver.find_element(:id, "email").send_keys "joao"
    sleep 1
    @driver.find_element(:id, "pass").click
    @driver.find_element(:id, "pass").clear
    @driver.find_element(:id, "pass").send_keys "senhafacil"
    sleep 1
    @driver.find_element(:id, "u_0_d_A8").click
    sleep 1
end
  
Então('o Facebook irá exibir a tela inicial') do
    sleep 5
end