ENV['RACK_ENV'] = 'test'
require('rspec')
require('sinatra/activerecord')
require('pg')
require('brand')
require('store')

RSpec.configure do |config|
  config.after(:each) do
    Store.all.each(&:destroy)
    Brand.all.each(&:destroy)
    end
  end
