class RemoveWorkTypeFromWork < ActiveRecord::Migration
  def change
    remove_column :works, :work_type, :string
  end
end
