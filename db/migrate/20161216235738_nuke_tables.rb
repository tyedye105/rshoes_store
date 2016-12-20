class NukeTables < ActiveRecord::Migration[5.0]
  def change
    drop_table(:shoe_brands_shoe_stores)
    drop_table(:stores)
    drop_table(:shoe_brands)
  end
end
