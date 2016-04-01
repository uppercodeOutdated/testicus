# desktop

Capybara.register_driver :desktop_chrome do |app| 
  Capybara::Selenium::Driver.new app, Settings.desktop[:chrome]
end

Capybara.register_driver :desktop_firefox do |app| 
  Capybara::Selenium::Driver.new app, Settings.desktop[:firefox]
end

Capybara.register_driver :desktop_safari do |app| 
  Capybara::Selenium::Driver.new app, Settings.desktop[:safari]
end

# tablet

Capybara.register_driver(:tablet_ios_safari) do |app|
  Appium::Capybara::Driver.new app, Settings.tablet[:ios][:safari]
end

Capybara.register_driver(:tablet_ios_chrome) do |app|
  Appium::Capybara::Driver.new app, Settings.tablet[:ios][:chrome]
end

Capybara.register_driver(:tablet_ios_firefox) do |app|
  Appium::Capybara::Driver.new app, Settings.tablet[:ios][:firefox]
end

Capybara.register_driver(:tablet_android_chrome) do |app|
  Appium::Capybara::Driver.new app, Settings.tablet[:android][:chrome]
end

Capybara.register_driver(:tablet_android_firefox) do |app|
  Appium::Capybara::Driver.new app, Settings.tablet[:android][:firefox]
end

# mobile

Capybara.register_driver(:mobile_ios_safari) do |app|
  Appium::Capybara::Driver.new app, Settings.mobile[:ios][:safari]
end

Capybara.register_driver(:mobile_ios_chrome) do |app|
  Appium::Capybara::Driver.new app, Settings.mobile[:ios][:chrome]
end

Capybara.register_driver(:mobile_ios_firefox) do |app|
  Appium::Capybara::Driver.new app, Settings.mobile[:ios][:firefox]
end

Capybara.register_driver(:mobile_android_chrome) do |app|
  Appium::Capybara::Driver.new app, Settings.mobile[:android][:chrome]
end

Capybara.register_driver(:mobile_android_firefox) do |app|
  Appium::Capybara::Driver.new app, Settings.mobile[:android][:firefox]
end
