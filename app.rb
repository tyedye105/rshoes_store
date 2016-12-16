require("sinatra")
require("sinatra/reloader")
require('sinatra/activerecord')
also_reload("lib/**/*.rb")
require("pg")
require('./lib/shoe_store')
require('./lib/shoe_brand')

get('/') do
  @stores = Shoe_store.all
  @brands = Shoe_brand.all
  erb(:index)
end

post('/stores') do
  name = params.fetch('store_name')
  new_store = Shoe_store.create(:name => name)
  @stores = Shoe_store.all
  @brands = Shoe_brand.all
  erb(:index)
end

delete('/stores/:id/delete') do
  id_to_delete = params.fetch("id").to_i
  store_to_delete = Shoe_store.find(id_to_delete)
  store_to_delete.delete()
  @stores = Shoe_store.all
  @brands = Shoe_brand.all
  erb(:index)
end
