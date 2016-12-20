class RenameStoreTable < ActiveRecord::Migration[5.0]
  def change
    drop_table(:shoe_stores)
    create_table(:stores) do |t|
    t.column(:name, :string)
    t.column(:shoe_store_id, :integer)
    end
  end
end
