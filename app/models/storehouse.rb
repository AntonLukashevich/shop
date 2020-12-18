class Storehouse < ApplicationRecord
  belongs_to :product
  validates :count, presence: true
end
