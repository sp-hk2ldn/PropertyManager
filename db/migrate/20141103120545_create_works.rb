class CreateWorks < ActiveRecord::Migration
  def change
    create_table :works do |t|
      t.string :type
      t.date :raised_date
      t.date :due_date
      t.integer :property_id

      t.timestamps
    end
  end
end
