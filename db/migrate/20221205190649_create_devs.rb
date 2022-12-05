class CreateDevs < ActiveRecord::Migration[7.0]
  def change
    create_table :devs do |t|
      t.string :username
      t.string :fname
      t.string :lname

      t.timestamps
    end
  end
end
