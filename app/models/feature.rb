class Feature < ApplicationRecord
  belongs_to :project
  translates :description
end
