class Image < ActiveRecord::Base
  belongs_to :recipe

  validates :filename, presence: true
  validates :recipe_id, presence: true

end
