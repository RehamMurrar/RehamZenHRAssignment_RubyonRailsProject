class CreateJobApplicationStates < ActiveRecord::Migration[7.0]
  def change
    create_table :job_application_states do |t|
      t.integer :state_id
      t.string :state_name

      t.timestamps
    end
  end
end
