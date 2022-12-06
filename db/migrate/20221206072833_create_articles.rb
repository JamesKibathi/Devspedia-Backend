class CreateArticles < ActiveRecord::Migration[7.0]
  def change
    create_table :articles do |t|
      t.string :title
      t.text :content
      t.integer :minutes_to_read
      t.text :featured_image
      t.integer :likes

      t.timestamps
    end
  end
end
