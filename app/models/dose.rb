class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient
  validates_uniqueness_of :cocktail, scope: :ingredient
  validates :description, presence: true
  # couple of cocktail_id/ingredient_id
end
