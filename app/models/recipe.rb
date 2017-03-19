class Recipe < ApplicationRecord
belongs_to :category
has_one :instruction
has_one :ingredient
end
