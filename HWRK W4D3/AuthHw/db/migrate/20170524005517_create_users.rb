class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_digest
      t.string :session_token

      t.timestamps null: false
    end
    add_index :users, :session_token, unique: true
    add_index :users, :username, unique: true
    add_index :users, :password_digest
  end
end
