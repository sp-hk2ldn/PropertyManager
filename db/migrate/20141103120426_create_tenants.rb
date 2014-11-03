class CreateTenants < ActiveRecord::Migration
  def change
    create_table :tenants do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :tel
      t.date :lease_commenced
      t.date :lease_end
      t.integer :property_id

      t.timestamps
    end
  end
end
