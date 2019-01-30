class Holiday < ApplicationRecord
  belongs_to :user
  has_one :category
  mount_uploaders :photos, PhotoUploader
 serialize :photos, JSON # If you use SQLite, add this line.
 has_many :tour_comments

 validates :name, :price, :description, presence: true
 validates :price, numericality: { only_integer: true, message: "only allows numericality" }
end
