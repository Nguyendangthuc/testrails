class DropShops < ActiveRecord::Migration[7.0]
  def change
    drop_table :shops
  end
end
