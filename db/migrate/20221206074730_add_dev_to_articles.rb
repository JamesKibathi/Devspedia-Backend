class AddDevToArticles < ActiveRecord::Migration[7.0]
  def change
    add_reference :articles, :dev, null: false, foreign_key: true
  end
end
