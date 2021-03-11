require 'capybara'
# require 'capybara/cucumber'
# require 'capybara/rspec'
require 'selenium-webdriver'
require 'pry'

docker_ip = %x(/sbin/ip route | awk '/default/ { print $3 }').strip

Capybara.register_driver :remote_chrome do |app|
    Capybara::Selenium::Driver.new(app,
    :browser => :remote,
    :desired_capabilities => :chrome,
    :url => "http://#{docker_ip}:4444/wd/hub")
end

# Capybara.configure do |config|
#     config.run_server = false
#     config.default_driver = :remote_chrome
#     config.app_host = 'http://www.google.com'
# end

Capybara.default_driver = :remote_chrome

@browser = Capybara.current_session
binding.pry