class RemoveWorksFromProperty < ActiveRecord::Migration
  def change
  	remove_column :properties, :works, :string
  end
end
