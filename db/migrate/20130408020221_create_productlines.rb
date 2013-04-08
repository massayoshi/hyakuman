class CreateProductlines < ActiveRecord::Migration
  def change
    create_table :productlines do |t|
      t.string :name
      t.references :manufacturer

      t.timestamps
    end
    add_index :productlines, :manufacturer_id
  end
end
