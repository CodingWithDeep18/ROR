class AddColumnInProject < ActiveRecord::Migration[6.1]
  def change
    add_column :projects, :project_manager, :string
  end
end
