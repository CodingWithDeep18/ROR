class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password
      t.string :isadmin

      t.timestamps
    end
    rename_column :users, :isadmin, :role
  end
end
