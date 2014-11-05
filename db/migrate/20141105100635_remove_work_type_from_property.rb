class RemoveWorkTypeFromProperty < ActiveRecord::Migration
  def change
    remove_column :properties, :work_type, :string
  end
end
