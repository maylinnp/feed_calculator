class RenameFeedToArticle < ActiveRecord::Migration[7.0]
 
  def self.up
    rename_table :articles, :feeds
  end
end
