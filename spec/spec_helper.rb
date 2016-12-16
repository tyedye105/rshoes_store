ENV['RACK_ENV'] = 'test'
require('rspec')
require('sinatra/activerecord')
require('pg')
require('shoe_brand')
require('shoe_store')

RSpec.configure do |config|
  config.after(:each) do
    Shoe_store.all().each() do |task|
        task.destroy()

    end
  end
end
