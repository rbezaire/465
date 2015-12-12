class Recipe < ActiveRecord::Base
  has_many :ratings
  has_many :images

  def generate_filename
	self.image.filename = rand(100000000)
  end

end
