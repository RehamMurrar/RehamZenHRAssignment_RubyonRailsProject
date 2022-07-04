class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.integer :user_id
      t.string :user_name
      t.references :user_type, null: false, foreign_key: true
      t.string :user_email
      t.string :user_password

      t.timestamps
    end
  end
end
