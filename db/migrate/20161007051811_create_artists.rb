class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.text :name
      t.text :location
      t.date :dob
      t.text :avatar

      t.timestamps null: false
    end
  end
end
