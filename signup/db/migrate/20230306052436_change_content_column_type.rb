class ChangeContentColumnType < ActiveRecord::Migration[7.0]
  def change
    change_column :articles, :content, :text
  end
end
