class FixAssociations < ActiveRecord::Migration[5.0]
  def change
    create_table(:shoe_stores_shoe_brands) do |t|
      t.column(:shoe_store_id, :integer)
      t.column(:shoe_brand_id, :integer)
    end
    remove_column(:shoe_stores, :shoe_brand_id)
    remove_column(:shoe_brands, :shoe_store_id)
  end
end
