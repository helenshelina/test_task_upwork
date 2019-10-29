require_relative '../config'
require 'selenium-webdriver'

class SearchResultsPage
  def results_filter
    @browser.find_element(:css, "#layout > div.container.responsive-container > div.air-card.p-0-top-bottom.m-0-top-bottom.d-flex-mobile-app.height-100-mobile-app > header-responsive > div > header > div:nth-child(1) > div > div > div.media-right > span > button > span.d-none.d-md-inline.p-sm-right")
  end

  def filter_category_drop_down
    @browser.find_element(:css, "#layout > div.container.responsive-container > div.air-card.p-0-top-bottom.m-0-top-bottom.d-flex-mobile-app.height-100-mobile-app > header-responsive > div > header > filter-tray-responsive > div > div > div > div.col-md-4.ng-scope > div > form > div > up-c-dropdown-search > div > up-c-on-media-change > up-c-on-click-outside > up-c-transition > div > button > up-c-icon > span.caret.glyphicon.air-icon-arrow-expand")
  end

  def filter_category_search
    @browser.find_element(:css, "#layout > div.container.responsive-container > div.air-card.p-0-top-bottom.m-0-top-bottom.d-flex-mobile-app.height-100-mobile-app > header-responsive > div > header > filter-tray-responsive > div > div > div > div.col-md-4.ng-scope > div > form > div > up-c-dropdown-search > div > up-c-on-media-change > up-c-on-click-outside > up-c-transition > div > ul > li:nth-child(1) > form > div > input")
  end

  def filter_category_search_result
    @browser.find_element(:css, "#layout > div.container.responsive-container > div.air-card.p-0-top-bottom.m-0-top-bottom.d-flex-mobile-app.height-100-mobile-app > header-responsive > div > header > filter-tray-responsive > div > div > div > div.col-md-4.ng-scope > div > form > div > up-c-dropdown-search > div > up-c-on-media-change > up-c-on-click-outside > up-c-transition > div > ul > li.active.sc-up-c-dropdown-search > a > span")
  end

  def filter_job_type
    @browser.find_element(:css, "#layout > div.container.responsive-container > div.air-card.p-0-top-bottom.m-0-top-bottom.d-flex-mobile-app.height-100-mobile-app > header-responsive > div > header > filter-tray-responsive > div > div > div > div:nth-child(2) > div > form > div > div:nth-child(3) > label > span.checkbox-replacement-helper > span")
  end

  def filter_project_length
    @browser.find_element(:css, "#layout > div.container.responsive-container > div.air-card.p-0-top-bottom.m-0-top-bottom.d-flex-mobile-app.height-100-mobile-app > header-responsive > div > header > filter-tray-responsive > div > div > div > div:nth-child(5) > div > form > div > div:nth-child(3) > label > span.checkbox-replacement-helper > span")
  end

  def search_results_list
    @browser.find_elements(:css, "section.air-card.air-card-hover.job-tile-responsive.ng-scope")
  end
end