class Pin < ActiveRecord::Base
  attr_accessible :description

#see rails validations
  validates :description, presence: true
end
