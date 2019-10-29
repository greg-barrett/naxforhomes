class Feature < ApplicationRecord
  belongs_to :project
  has_one_attached :image
  translates :description, :fallbacks_for_empty_translations => true
  validates :description, :presence => true
end
