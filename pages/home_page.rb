require_relative '../config'

class HomePage

  def initialize(browser)
    @browser = browser
  end

  def base_page
    "https://www.upwork.com"
  end

  def open
    @browser.get base_page
  end

  def search_form
    @browser.find_element(:css, ".sticky-sublocation > div.navbar-form > up-header-search > up-c-on-click-outside > form")
  end

  def search_type_drop_down_arrow
    search_form.find_element(:css, ".air-icon-arrow-expand")
  end

  def search_type_drop_down
    search_form.find_element(:css, "ul.dropdown-menu")
  end

  def search_field
    search_form.find_element(:css,"input.form-control")
  end

  def search(job_type, query)
    search_type_drop_down_arrow.click
    search_type_drop_down.find_element(:link_text, job_type).click
    search_field.send_keys(query)
    search_field.submit
  end

end