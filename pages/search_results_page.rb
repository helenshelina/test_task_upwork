require_relative '../config'
require 'selenium-webdriver'

class SearchResultsPage
  def initialize(browser)
    @browser = browser
  end

  def results_filter_button
    @browser.find_element(:css, "button.toggle-filters-button-responsive")
  end

  def filters_section
    @browser.find_element(:css, "header")
  end

  def job_category_drop_down_arrow
    filters_section.find_element(:css, ".sc-up-c-dropdown-search > .air-icon-arrow-expand")
  end

  def filter_category_search_field
    filters_section.find_element(:css, "input.form-control.sc-up-c-dropdown-search")
  end

  def filter_category_search_result
    filters_section.find_element(:css, "ul.dropdown-menu")
  end

  def filter_job_type_section
   @browser.find_element(:css, "div[data-filter-standard-responsive='jobType']")
  end

  def filter_project_length_section
    @browser.find_element(:css, "div[data-filter-standard-responsive='duration_v3']")
  end

  def search_results_list
    @browser.find_elements(:css, "section.air-card.air-card-hover.job-tile-responsive.ng-scope")
  end

  def filter_jobs(criteria, value)
    if criteria == "Job category"
      wait_for(job_category_drop_down_arrow)

      job_category_drop_down_arrow.click

      wait_for(filter_category_search_field)

      filter_category_search_field.send_keys(value)

      wait_for(filter_category_search_result)

      filter_category_search_result.find_element(:partial_link_text, value).click

    elsif criteria == "Job type"
      filter_job_type_section.find_elements(:css, ".checkbox > label > span.ng-binding").select {|el| el.text == value }.first.click

    elsif criteria == "Job length"
      filter_project_length_section.find_elements(:css, ".checkbox > label > span.ng-binding").select {|el| el.text == value }.first.click
    end
  end

end