require("bundler/setup")
Bundler.require(:default)
Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }

get('/') do
  @stores = Store.all
  @brands = Brand.all
  erb(:index)
end

post('/stores') do
  name = params.fetch('store_name')
  new_store = Store.create(:name => name)
  @stores = Store.all
  @brands = Brand.all
  erb(:index)
end

delete('/stores/:id/delete') do
  id_to_delete = params.fetch("id").to_i
  store_to_delete = Store.find(id_to_delete)
  store_to_delete.delete()
  @stores = Store.all
  @brands = Brand.all
  erb(:index)
end

get('/store/:id/edit') do
  @store = Store.find(params.fetch('id').to_i)
  erb(:update)
end


patch('/:id/update') do
  @store = Store.find(params.fetch('id').to_i)
  name_to_update = params.fetch('update_name')
  @store.update({:name => name_to_update})
  @brands = Brand.all()
  erb(:store_view)
end



get('/stores/:id') do
  @store = Store.find(params.fetch('id').to_i)
  @brands = Brand.all
  erb(:store_view)
end



post('/brands') do
  name = params.fetch('brand_name')
  new_brand = Brand.create(:name => name)
  @stores = Store.all
  @brands = Brand.all
  erb(:index)
end

get('/stores/:id/brand_add') do
  @store = Store.find(params.fetch('id').to_i)
  @brands = Brand.all()
  erb(:add_brand)
end

patch('/stores/:id/brands') do
  @store = Store.find(params.fetch('id').to_i)
  brand_to_add = params.fetch("add_brand")
  @brand = Brand.find_by(name: brand_to_add)
  @store.brands.push(@brand)
  @brands = Brand.all
  erb(:store_view)
end

get('/brands/:id/stores') do
  @brand = Brand.find(params.fetch('id').to_i)
  erb(:shoe_view)
end
