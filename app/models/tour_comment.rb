class TourComment < ApplicationRecord
  belongs_to :holiday
  belongs_to :user
end
