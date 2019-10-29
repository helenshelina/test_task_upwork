require './config'
require_relative './pages/home_page'
require_relative './pages/search_results_page'
require_relative './pages/job_description_page'

run{
home_page = HomePage.new

home_page.open
home_page.arrow.click
home_page.search_type.click
home_page.search_field.send_keys('Java')
home_page.search_field.submit

results_page = SearchResultsPage.new
wait_for(results_page.results_filter)
results_page.results_filter.click

wait_for(results_page.filter_category_drop_down)
results_page.filter_category_drop_down.click

results_page.filter_category_search.send_keys 'All - Web, Mobile & Software Dev'

results_page.filter_category_search_result.click
results_page.filter_job_type.click
results_page.filter_project_length.click
results_page.results_filter.click


wait_for(results_page.search_results_list)
results_page.search_results_list[1].click

job_description_page = JobDescriptionPage.new

wait_for(job_description_page.job_description)
job_description_text = job_description_page.job_description.text.downcase

job_description_text.include? "java"

job_rate_text = job_description_page.job_rate.text
job_rate_text.include? "Less than 30 hrs/week"

duration_text = job_description_page.job_duration.text
duration_text.equal? "Less than a month"
}
