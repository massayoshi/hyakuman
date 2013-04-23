class RemoveManufacturerIdFromMaterial < ActiveRecord::Migration
  def up
    remove_column :materials, :manufacturer_id
  end

  def down
    add_column :materials, :manufacturer_id, :integer
  end
end
