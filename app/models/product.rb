class Product < ApplicationRecord
	has_many :product_attrs
	validates :title, presence: true,
                    length: { minimum: 5 }
end
