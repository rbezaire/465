class Reference < ActiveRecord::Base

  validates :url, presence: true
  validates :time, presence: true

  belongs_to :topics

end
