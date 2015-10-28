class Topic < ActiveRecord::Base
    has_many :references, dependent: :destroy
    accepts_nested_attributes_for :references
    def topic
        title + ' ' + description
    end


end
