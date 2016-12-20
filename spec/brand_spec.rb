require('spec_helper')

describe Brand do
  it('will upcase the name of the brand before saving.')do
    test_brand = Brand.create({:name => "l.a gear"})
    expect(test_brand.name()).to(eq("L.A Gear"))
  end
end
