class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient

  # validates :cocktail_id, presence: true, uniqueness: true
  # validates :ingredient_id, presence: true, uniqueness: true
  validates :description, presence: true
  validates :cocktail, uniqueness: {scope: :ingredient}
end
