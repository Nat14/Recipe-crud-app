class Recipe < ActiveRecord::Base
  has_many :ingredients
  validates :recipe, presence: true
end
