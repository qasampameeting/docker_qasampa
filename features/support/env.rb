require 'rspec'
require 'capybara'
require 'cucumber'
require 'site_prism'
require 'capybara/cucumber'
require 'pry'
require 'webdrivers'
require 'selenium-webdriver'


Capybara.register_driver :chrome do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

Capybara.register_driver :headless_chrome do |app|
  capabilities = Selenium::WebDriver::Remote::Capabilities.chrome(
    chromeOptions: { 
      args: %w[ no-sandbox disable-dev-shm-usage disable-popup-blocking disable-gpu window-size=1280,1024]
    }
  )

client = Selenium::WebDriver::Remote::Http::Default.new
client.read_timeout = 10

Capybara::Selenium::Driver.new(
    app,
    browser: :remote,
    url: "http://#{ENV['CHROME_HOSTNAME']}:4444/wd/hub",
    desired_capabilities: capabilities,
    http_client: client
  )
end


Capybara.javascript_driver = :headless_chrome

Capybara.configure do |config|
  config.default_driver = :headless_chrome
  config.app_host = 'http://newtours.demoaut.com'
end

