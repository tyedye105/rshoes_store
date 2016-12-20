require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

  describe('add store path', {:type => :feature}) do
    it('will let the user add a store to the database.') do
      visit('/')
      fill_in('store_name', :with => "Payless Shoes")
      click_button('add store')
      expect(page).to have_content("Payless Shoes")
    end
  end

describe('vist store path', {:type => :feature}) do
  it('will let the user a specific store by clicking on its link.') do
        test_store = Store.create({:name => "Famous Footwear"})
        visit('/')
        click_link("Famous Footwear")
        expect(page).to have_content("no brands supported")
  end
end
