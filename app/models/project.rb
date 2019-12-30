class Project < ApplicationRecord
  has_many :features, dependent: :destroy
  has_many_attached :images
  translates :description, :ptype, :fallbacks_for_empty_translations => true
  accepts_nested_attributes_for :features, :allow_destroy => true, :reject_if => :all_blank
  validates :name, :location, :description, :presence => true
  default_scope { order(created_at: :desc) }

  def resized_images(input)
    return self.images.find(input.id).variant(resize: '1920x1080', quality: '90').processed
  end
end
