class AddIndexInArticles < ActiveRecord::Migration[7.0]
  def change
    add_index :articles, :author
  end
end
