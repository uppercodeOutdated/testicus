class Appium::Capybara::Driver < Capybara::Selenium::Driver
  def reset!
    # Use instance variable directly so we avoid starting the browser just to reset the session
    if @browser
      begin
        #@browser.manage.delete_all_cookies <= cookie deletion is commented out!
      rescue Selenium::WebDriver::Error::UnhandledError => e
        # delete_all_cookies fails when we've previously gone
        # to about:blank, so we rescue this error and do nothing
        # instead.
      end
      @browser.navigate.to('about:blank')
    end
  end
end