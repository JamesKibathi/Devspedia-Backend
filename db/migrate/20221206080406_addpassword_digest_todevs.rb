class AddpasswordDigestTodevs < ActiveRecord::Migration[7.0]
  def change
    add_column :devs, :password_digest, :string
  end
end
