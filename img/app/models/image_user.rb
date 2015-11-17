class ImageUser < ActiveRecord::Base
  belongs_to :user
  belongs_to :image
  has_many :images
end
