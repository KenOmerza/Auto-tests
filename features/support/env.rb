
require "capybara/cucumber"
require 'capybara-screenshot/cucumber'
require 'syntax'

Capybara.default_driver = :selenium
#http://collectiveidea.com/blog/archives/2011/09/27/use-chrome-with-cucumber-capybara/
#Capybara.register_driver :chrome do |app|
#  Capybara::Selenium::Driver.new(app, :browser => :chrome)
#essnd

Capybara.javascript_driver = :chrome

#Screenshot management
Capybara::Screenshot.prune_strategy = :keep_last_run

Capybara.save_and_open_page_path = "./reports/images"
