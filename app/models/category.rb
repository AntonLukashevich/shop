class Category < ApplicationRecord
	has_many :product
	validates :title, presence: true,
                    length: { minimum: 4 }
end
