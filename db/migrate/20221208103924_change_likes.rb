class ChangeLikes < ActiveRecord::Migration[7.0]
  def change
    change_column :articles, :likes, :integer, null: false, default: 0
  end
end
