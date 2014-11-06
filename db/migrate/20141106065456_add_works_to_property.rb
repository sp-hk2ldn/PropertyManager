class AddWorksToProperty < ActiveRecord::Migration
  def change
    add_column :properties, :active_job, :string
  end
end
