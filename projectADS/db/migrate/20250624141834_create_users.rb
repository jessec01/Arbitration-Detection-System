class CreateUsers < ActiveRecord::Migration[8.0]
  def change
    create_table :users do |t|
      t.string :first_name, null: false, limit: 16
      t.string :second_name, null:false, limit:16
      t.string :email, null: false, limit:200
      t.integer :phone_number, null:false
      t.string :password_digest, null: false, limit: 60
      t.boolean :is_user, default: false
      t.boolean  :is_active, default: true
      t.timestamps
    end
    add_index :users, :email, unique: true
    add_index :users, :phone_number, unique: true
  end
end
