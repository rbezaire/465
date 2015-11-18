class Image < ActiveRecord::Base
  belongs_to :user
  has_many :tags
  has_many :users
  
  def generate_filename
	self.filename = rand(100000000)
  end
end
