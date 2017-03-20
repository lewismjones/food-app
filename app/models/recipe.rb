class Recipe < ApplicationRecord
belongs_to :category
has_one :instruction, dependent: :destroy
has_one :ingredient, dependent: :destroy
end
