class CreateMaterials < ActiveRecord::Migration
  def change
    create_table :materials do |t|
      t.string :name
      t.references :productline
      t.string :image

      t.timestamps
    end
    add_index :materials, :productline_id
  end
end
