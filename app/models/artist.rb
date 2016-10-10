# == Schema Information
#
# Table name: artists
#
#  id         :integer          not null, primary key
#  name       :text
#  location   :text
#  dob        :date
#  avatar     :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Artist < ActiveRecord::Base
  has_many :doodles
  has_secure_password
  validates :email, :presence => true, :uniqueness => true
  # validates :name, :uniqueness => true, :length => {:minimum => 2}
end
