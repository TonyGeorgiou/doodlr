class AddBlurbToArtists < ActiveRecord::Migration
  def change
    add_column :artists, :blurb, :text
  end
end
