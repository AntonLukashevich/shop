class Product < ApplicationRecord
	has_many: product_attr, dependet: :destroy
	validates :title, presence: true,
                    length: { minimum: 5 }
end
