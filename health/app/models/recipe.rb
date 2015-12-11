class Recipe < ActiveRecord::Base
  has_many :ratings
  has_many :images
end
