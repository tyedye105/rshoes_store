class FixJoinTable < ActiveRecord::Migration[5.0]
  def change
    drop_table(:shoe_stores_shoe_brands)
    create_table(:shoe_brands_shoe_stores) do |t|
    t.column(:shoe_brand_id, :integer)
    t.column(:shoe_store_id, :integer)
    end
  end
end
