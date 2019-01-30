class TourComment < ApplicationRecord
  belongs_to :holiday
  belongs_to :user
  validates :body,  presence: true
end
