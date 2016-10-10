class RenameDoodleColumnNameUrlToImageUrl < ActiveRecord::Migration
  def change
    rename_column :doodles, :url, :image_url
  end
end
