require 'selenium-webdriver'

Selenium::WebDriver::Chrome::Service.driver_path="/usr/local/bin/chromedriver"
Selenium::WebDriver::Firefox::Service.driver_path="/usr/local/bin/geckodriver"

def run
  setup
  yield
  teardown
end

def browser
  @browser = Selenium::WebDriver.for :firefox
end

def setup
  browser
  @browser.manage.timeouts.implicit_wait = 15
end

def teardown
  @browser.quit
end


def wait_for (element)
  wait = Selenium::WebDriver::Wait.new(:timeout => 20)
  wait.until{element.displayed?}
end
