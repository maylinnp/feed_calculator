class RenameArticleToFeed < ActiveRecord::Migration[7.0]
  def change
    rename_table :articles, :feeds
  end
end
