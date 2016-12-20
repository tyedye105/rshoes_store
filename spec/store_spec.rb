require('spec_helper')

describe Store do
  describe('.all') do
    it('will return an empty array, validate databases are properly wired.') do
      expect(Store.all()).to(eq([]))
    end
  end

  describe('#brands') do
    it ('will return the brands associated with the store.') do
      test_store = Store.create({:name => "Famous Footwear"})
      test_brand = Brand.create({:name => "L.A Gear"})
      test_store.update({:brand_ids => [test_brand.id()]})
      expect(test_store.brands()).to(eq([test_brand]))
    end
  end
end
