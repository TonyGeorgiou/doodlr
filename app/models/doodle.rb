# == Schema Information
#
# Table name: images
#
#  id         :integer          not null, primary key
#  title      :text
#  url        :text
#  caption    :text
#  artist_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Doodle < ActiveRecord::Base
  belongs_to :artist
end
