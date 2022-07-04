class CreateJobPosts < ActiveRecord::Migration[7.0]
  def change
    create_table :job_posts do |t|
      t.integer :job_post_id
      t.string :job_post_title
      t.text :job_post_describtion
      t.references :user, null: false, foreign_key: true
      t.datetime :posted_on

      t.timestamps
    end
  end
end
