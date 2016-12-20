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

  describe('update store path', {:type => :feature}) do
    it('will let the user update the name of a store.') do
      test_store = Store.create({:name => "Famous Footwear"})
      visit('/')
      click_link("Famous Footwear")
      click_link("Update name")
      fill_in("update_name", :with => "Payless Shoes")
      click_button('Update')
      expect(page).to have_content("Payless Shoes")
    end
  end

  describe('delete store path', {:type => :feature}) do
    it('will let the user delete the name of a store.') do
      test_store = Store.create({:name => "Famous Footwear"})
      visit('/')
      click_button("Delete the store")
      expect(page).to have_content("there are no stores")
    end
  end

  describe('new brand path', {:type => :feature}) do
    it('will let the user add a brand to the database') do
      visit('/')
      fill_in('brand_name', :with => "New Balance")
      click_button('add brand')
      expect(page).to have_content("New Balance")
    end
  end

  describe('add brand path', {:type => :feature}) do
    it('will let the user add a brand to be sold at a specific store') do
      test_store = Store.create({:name => "Famous Footwear"})
      test_brand = Brand.create({:name => "Rebok"})
      visit('/')
      click_link("Famous Footwear")
      click_link("add a brand to the store")
      fill_in("add_brand", :with => test_brand.name)
      click_button('add')
      expect(page).to have_content("Rebok")
    end
  end

  describe('view brand path', {:type => :feature}) do
    it('will let click on a brand a view all of the stores it is sold in (if any)') do
      test_store = Store.create({:name => "Famous Footwear"})
      test_brand = Brand.create({:name => "Rebok"})
      visit('/')
      click_link("Famous Footwear")
      click_link("add a brand to the store")
      fill_in("add_brand", :with => test_brand.name)
      click_button('add')
      click_link('Return to the home page!')
      click_link("Rebok")
      expect(page).to have_content("Famous Footwear")
    end
  end
