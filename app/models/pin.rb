class Pin < ActiveRecord::Base
  attr_accessible :description

#see rails validations
  validates :description, presence: true

 	belongs_to :user
 	validates :user_id, presence: true
end
