class AddJobCompletitionToWork < ActiveRecord::Migration
  def change
    add_column :works, :completed_at, :datetime
  end
end
