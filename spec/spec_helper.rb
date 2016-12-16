ENV['RACK_ENV'] = 'test'
require('rspec')
require('pg')
require('sinatra/activerecord')
require('shoe_brand')
require('shoe_store')

RSpec.configure do |config|
  config.after(:each) do
    Shoe_Brand.all.each(&:destroy)
    Shoe_Store.all.each(&:destroy)
  end
end
