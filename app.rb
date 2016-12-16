require("sinatra")
require("sinatra/reloader")
require('sinatra/activerecord')
also_reload("lib/**/*.rb")
require("pg")
require('./lib/shoe_store')
require('./lib/shoe_brand')

get('/') do
  erb(:index)
end
