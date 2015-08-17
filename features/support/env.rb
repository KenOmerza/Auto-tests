
require "capybara/cucumber"
require 'capybara-screenshot/cucumber'
require 'syntax'

Capybara.default_driver = :selenium


#Screenshot management
Capybara::Screenshot.prune_strategy = :keep_last_run

Capybara.save_and_open_page_path = "./reports/images"
