class Image < ActiveRecord::Base
  belongs_to :recipe

  def generate_filename
	self.filename = rand(100000000)
  end

end
