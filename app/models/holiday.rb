class Holiday < ApplicationRecord
  belongs_to :user
  has_one :category
  mount_uploaders :photos, PhotoUploader
 serialize :photos, JSON # If you use SQLite, add this line.
 has_many :tour_comments
end
