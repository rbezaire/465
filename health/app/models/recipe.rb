class Recipe < ActiveRecord::Base
  has_many :ratings

  def generate_image_name
	self.image = rand(1000000000)
  end
end
