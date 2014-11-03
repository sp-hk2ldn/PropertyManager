class CreateLandlords < ActiveRecord::Migration
  def change
    create_table :landlords do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :tel
      t.string :address
      t.date :date_registered
      t.integer :property_id

      t.timestamps
    end
  end
end
