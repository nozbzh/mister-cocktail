class Dose < ActiveRecord::Base
  belongs_to :cocktail
  belongs_to :ingredient
  validates :description, presence: true
  validates :cocktail, presence: true
  validates :ingredient, presence: true
  validates_uniqueness_of :cocktail_id, scope: :ingredient_id
  # validates_uniqueness_of :ingredient, scope: :cocktail
end
