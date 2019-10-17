class Feature < ApplicationRecord
  belongs_to :project
  has_one_attached :image
  translates :description
end
