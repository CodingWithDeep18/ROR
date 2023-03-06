class RenameColumnInArticles < ActiveRecord::Migration[7.0]
  def change
    rename_column :articles, :body, :content
  end
end
