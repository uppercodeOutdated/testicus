require './support/spec_helper.rb'

RSpec.describe 'OLX Welcome page spec' do

  before :each do
    @app = AppPages.new
    @app.welcome_page.load
  end

  it 'should have search input' do
    @app.welcome_page.search_input.set 'foo'
    expect(@app.welcome_page.search_input.value).to eq('foo')
  end

end