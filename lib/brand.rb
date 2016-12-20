class Brand < ActiveRecord::Base
  has_and_belongs_to_many(:stores)
  before_save(:to_titlecase)
private
  define_method(:to_titlecase) do
    self.name = (name().titlecase())
  end
end
