class Recipe < ApplicationRecord
belongs_to :category
has_one :instruction, dependent: :destroy
has_one :ingredient, dependent: :destroy
has_one :image, dependent: :destroy
end
