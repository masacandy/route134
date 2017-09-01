class SpotImage < ApplicationRecord
  belongs_to :spot

  mount_uploader :image, SpotImageUploader
end
