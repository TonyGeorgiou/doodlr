class CreateDoodles < ActiveRecord::Migration
  def change
    create_table :doodles do |t|
      t.text :title
      t.text :url
      t.text :caption
      t.integer :artist_id

      t.timestamps null: false
    end
  end
end
