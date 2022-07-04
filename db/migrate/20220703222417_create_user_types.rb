class CreateUserTypes < ActiveRecord::Migration[7.0]
  def change
    create_table :user_types do |t|
      t.integer :user_type_id
      t.string :user_type_name

      t.timestamps
    end
  end
end
