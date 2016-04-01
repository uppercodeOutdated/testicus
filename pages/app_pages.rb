module Desktop; end
module Tablet;  end
module Mobile;  end

Dir['./pages/desktop/*.rb'].each{ |f| require f }
Dir['./pages/tablet/*.rb' ].each{ |f| require f }
Dir['./pages/mobile/*.rb' ].each{ |f| require f }

class AppPages

  def welcome_page
    Object.const_get("#{ENV['mode'].capitalize}::WelcomePage").new
  end

end