class CreateProfiles < ActiveRecord::Migration[7.0]
  def change
    create_table :profiles do |t|
      t.text :bio
      t.text :image_url
      t.string :linkedin
      t.string :github
      t.string :twitter

      t.timestamps
    end
  end
end
