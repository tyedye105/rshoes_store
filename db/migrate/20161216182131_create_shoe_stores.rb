class CreateShoeStores < ActiveRecord::Migration[5.0]
  def change
    create_table(:shoe_stores) do |t|
      t.column(:name, :string)
      t.column(:shoe_brand_id, :integer)
    end
  end
end
