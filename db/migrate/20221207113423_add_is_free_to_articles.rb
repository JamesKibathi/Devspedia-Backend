class AddIsFreeToArticles < ActiveRecord::Migration[7.0]
  def change
    add_column :articles, :is_free, :boolean, null: false, default: false
  end
end
