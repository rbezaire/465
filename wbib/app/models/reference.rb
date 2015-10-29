class Reference < ActiveRecord::Base

def addhttp
	if not self.url.include?("http://")
		self.url = 'http://' + self.url
	end
end

  before_validation :addhttp

  validates :url, presence: true

  belongs_to :topics

end
