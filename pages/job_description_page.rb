require_relative '../config'
require 'selenium-webdriver'

class JobDescriptionPage
  def initialize(browser)
    @browser = browser
  end

  def job_description
    @browser.find_element(:css, ".job-description > div:nth-child(1)")
  end

  def job_description_text
    job_description.text.downcase
  end

  def job_type_text
    @browser.find_element(:css, ".job-features > li:nth-child(1) > small.text-muted").text.downcase
  end

  def job_duration_text
    @browser.find_element(:css, ".job-features > li:nth-child(2) > strong:nth-child(2) > span:nth-child(1)").text.downcase
  end
end