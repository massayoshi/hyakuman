class AddManufacturerIdToMaterials < ActiveRecord::Migration
  def change
    add_column :materials, :manufacturer_id, :integer
  end
end
