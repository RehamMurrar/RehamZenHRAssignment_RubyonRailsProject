class CreateJobApplications < ActiveRecord::Migration[7.0]
  def change
    create_table :job_applications do |t|
      t.integer :job_application_id, :default => 12
      t.references :job_post, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.datetime :applied_on
      t.references :job_application_state, null: false, foreign_key: true

      t.timestamps
    end
  end
end
