class AddReferencesEmployee < ActiveRecord::Migration[7.0]
  def change
    add_reference :employees, :role, index: true
    add_foreign_key :employees, :roles
  end
end

