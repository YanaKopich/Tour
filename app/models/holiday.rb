class Holiday < ApplicationRecord
  mount_uploaders :photos, PhotoUploader
  serialize :photos, JSON # If you use SQLite, add this line.
end
