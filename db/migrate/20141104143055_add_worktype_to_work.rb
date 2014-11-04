class AddWorktypeToWork < ActiveRecord::Migration
  def change
    add_column :works, :work_type, :string
  end
end
