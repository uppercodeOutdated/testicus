# gems
require 'rubygems'
require 'capybara'
require 'capybara/dsl'
require 'capybara/rspec'
require 'selenium-webdriver'
require 'site_prism'
require 'appium_lib'
require 'appium_capybara'

# debug
require 'pry'

# settings
require './config/initializers/settings'
require './config/initializers/drivers'

require './support/capybara_settings'
require './lib/appium/capybara/driver'
require './lib/capybara/selenium/driver'

# pages
require './pages/app_pages'

# rspec
RSpec.configure do |config|
  config.include Capybara::DSL
end

# capybara
default_driver = -> (mode, platform, browser) { [mode, platform, browser].compact.join('_').to_sym }

Capybara.configure do |config|
  config.run_server      = false
  config.app_host        = Settings.application.url
  config.default_driver  = default_driver.call ENV['MODE'], ENV['PLATFORM'], ENV['BROWSER']
end

