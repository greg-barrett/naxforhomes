class Project < ApplicationRecord
  has_many :features, dependent: :destroy
  has_many_attached :images
  translates :description, :ptype, :fallbacks_for_empty_translations => true
  accepts_nested_attributes_for :features, :allow_destroy => true, :reject_if => :all_blank
end
