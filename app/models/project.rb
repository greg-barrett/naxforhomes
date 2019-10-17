class Project < ApplicationRecord
  has_many :features, dependent: :destroy
  has_many_attached :images
  translates :description, :ptype
end
