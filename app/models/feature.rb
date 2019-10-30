class Feature < ApplicationRecord
  belongs_to :project
  has_one_attached :image
  translates :description, :fallbacks_for_empty_translations => true
  validates :description, :presence => true

  def resized_image
    return self.image.variant(resize: '1920x1080', quality: '90').processed
  end
end
