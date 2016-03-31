require 'rubygems'
require 'capybara'
require 'capybara/dsl'
require 'capybara/rspec'
require 'selenium-webdriver'
require 'site_prism'
require 'appium_lib'
require 'appium_capybara'

require 'pry' # for debugging

# require capybara settings
require './support/capybara_settings'
require './support/appium_session_crutch'
require './support/capybara_session_crutch'

# require page objects classes
require './pages/app_pages'

RSpec.configure do |config|
  config.include Capybara::DSL
end