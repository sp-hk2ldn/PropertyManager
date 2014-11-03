class CreateContractors < ActiveRecord::Migration
  def change
    create_table :contractors do |t|
      t.string :company_name
      t.string :industry_type
      t.string :email
      t.string :tel
      t.integer :jobs_completed
      t.integer :jobs_feedback_good
      t.integer :jobs_feedback_bad

      t.timestamps
    end
  end
end
