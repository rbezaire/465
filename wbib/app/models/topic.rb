class Topic < ActiveRecord::Base
    has_many :references, dependent: :destroy
    accepts_nested_attributes_for :references, reject_if: lambda { |attributes| attributes['title'].blank? || attributes['desctiption'].blank?}

	validates :title, presence: true
    validates :description, presence: true

    def topic
        title + ' ' + description
    end

end
