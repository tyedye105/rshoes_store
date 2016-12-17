require('spec_helper')

describe Store do
  describe('.all') do
    it('will return an empty array, validate databases are properly wired.')
      expect(store.all).to(eq([]))
  end
end
