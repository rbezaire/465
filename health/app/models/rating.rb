class Rating < ActiveRecord::Base
  belongs_to :recipe_id
end
