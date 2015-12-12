class Rating < ActiveRecord::Base
  belongs_to :recipe

  validates :comment, presence: true
  validates :rate, presence: true

end
