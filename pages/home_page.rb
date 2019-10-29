require_relative '../config'

class HomePage
  def base_page
    "https://www.upwork.com"
  end

  def open
    @browser.get base_page
  end

  def arrow
    @browser.find_element(:css, '#layout > up-header-visitor-primary-nav > nav > div > div.navbar-collapse.d-none.d-lg-flex.sticky-sublocation > div.navbar-form > up-header-search > up-c-on-click-outside > form > div > div > button.dropdown-toggle.btn.p-xs-left-right > span.caret.glyphicon.air-icon-arrow-expand')
  end

  def search_type
    @browser.find_element(:css, '#layout > up-header-visitor-primary-nav > nav > div > div.navbar-collapse.d-none.d-lg-flex.sticky-sublocation > div.navbar-form > up-header-search > up-c-on-click-outside > form > div > div > up-header-search-menu > ul > li:nth-child(2) > a')
  end

  def search_field
    @browser.find_element(:css, '#layout > up-header-visitor-primary-nav > nav > div > div.navbar-collapse.d-none.d-lg-flex.sticky-sublocation > div.navbar-form > up-header-search > up-c-on-click-outside > form > div > input.form-control')
  end
end