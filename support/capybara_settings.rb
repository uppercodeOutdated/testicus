case ENV['mode']
when 'mobile'

  Capybara.register_driver(:appium) do |app|
    android_configs = {
      platform:        'Android',
      deviceName:      '38f4c818',
      platformName:    'Android',
      platformVersion: '4.4.2',
      browserName:     ENV['browser'].capitalize
    }

    Appium::Capybara::Driver.new app, {caps: android_configs}
  end

  Capybara.configure do |config|
    config.run_server        = false
    config.app_host          = 'http://olx.ua/'
    config.default_driver    = :appium
  end

when 'web'

  Capybara.register_driver :selenium do |app| 
    Capybara::Selenium::Driver.new app, browser: ENV['browser'].to_sym
  end

  Capybara.configure do |config|
    config.run_server = false
    config.app_host   = 'http://olx.ua/'

    config.current_driver    = :selenium
    config.javascript_driver = :selenium
    config.default_driver    = :selenium 
  end

else

  puts '[ERROR] please, set tests mode.'

end


