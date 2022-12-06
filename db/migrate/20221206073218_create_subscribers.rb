class CreateSubscribers < ActiveRecord::Migration[7.0]
  def change
    create_table :subscribers do |t|
      t.string :username
      t.string :password_digest
      t.text :email

      t.timestamps
    end
  end
end
