class AddDevToProfile < ActiveRecord::Migration[7.0]
  def change
    add_reference :profiles, :dev, null: false, foreign_key: true
  end
end
