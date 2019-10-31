require 'selenium-webdriver'
require_relative './pages/pages'

Selenium::WebDriver::Chrome::Service.driver_path="/usr/local/bin/chromedriver"
Selenium::WebDriver::Firefox::Service.driver_path="/usr/local/bin/geckodriver"

def run
  setup
  yield
  teardown
end

def setup
  # just in case of testing in chrome
  # @browser = Selenium::WebDriver.for :chrome
  @browser = Selenium::WebDriver.for :firefox
  @browser.manage.timeouts.implicit_wait = 15
  @pages = Pages.new(@browser)
end

def teardown
  @browser.quit
end
