class CreateAdminUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :admin_users do |t|
      t.string :name
      t.string :email
      t.integer :phone

      t.timestamps
    end
  end
end
