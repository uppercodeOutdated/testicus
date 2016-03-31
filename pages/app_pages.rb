# require all web page-object classes
module Web; end
Dir['./pages/web/*.rb'].each{ |f| require f }

# require all mobile page-object classes
module Mobile; end
Dir['./pages/mobile/*.rb'].each{ |f| require f }

class AppPages

  def welcome_page
  	Object.const_get("#{ENV['mode'].capitalize}::WelcomePage").new
  end

end