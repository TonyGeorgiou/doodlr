class AddUsernamePasswordToArtists < ActiveRecord::Migration
  def change
    add_column :artists, :password_digest, :string
    add_column :artists, :email, :string
  end
end
