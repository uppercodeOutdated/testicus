class Mobile::WelcomePage < SitePrism::Page
  set_url '/'

  element :search_input, '#simpleSearchQuery'
end