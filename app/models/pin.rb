class Pin < ActiveRecord::Base
  attr_accessible :description, :image

#see rails validations
  validates :description, presence: true
  validates :user_id, presence: true
  validates_attachment :image, presence: true,
  														 content_type: { content_type: ['image/jpeg', 'image/jpg', 'image/png', 'image/gif'] },
  														 size: { less_than: 5.megabytes }
 	
 	belongs_to :user

 	#control size of image on pin index page (i.e. app/views/pins/index.html.erb). Resizes new uploaded images.
 	has_attached_file :image, styles: { medium: "320x240>"}
end
