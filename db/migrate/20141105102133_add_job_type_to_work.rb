class AddJobTypeToWork < ActiveRecord::Migration
  def change
    add_column :works, :job_type, :string
  end
end
