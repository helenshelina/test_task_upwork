require_relative '../config'
require 'selenium-webdriver'

class JobDescriptionPage
  def job_description
    @browser.find_element(:css, "#job-details-slider > div > div > visitor-job-details > ng-transclude > div.jd-card.air-card.p-0-top-bottom.m-0-top-bottom.ng-scope > div > div > section:nth-child(3) > div > div")
  end

  def job_rate
    @browser.find_element(:css, "#job-details-slider > div > div > visitor-job-details > ng-transclude > div.jd-card.air-card.p-0-top-bottom.m-0-top-bottom.ng-scope > div > div > section:nth-child(4) > ul > li:nth-child(1) > strong")
  end

  def job_duration
    @browser.find_element(:css, "#job-details-slider > div > div > visitor-job-details > ng-transclude > div.jd-card.air-card.p-0-top-bottom.m-0-top-bottom.ng-scope > div > div > section:nth-child(4) > ul > li:nth-child(2) > strong > span.d-none.d-lg-inline")
  end
end