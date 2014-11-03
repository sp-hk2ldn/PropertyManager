class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|
      t.string :address
      t.integer :landlord_id
      t.float :longitude
      t.float :latitude
      t.boolean :works
      t.string :work_type

      t.timestamps
    end
  end
end
