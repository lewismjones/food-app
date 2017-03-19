class Recipe < ApplicationRecord
belongs_to :category
has_many :instructions
has_many :ingredients
end
