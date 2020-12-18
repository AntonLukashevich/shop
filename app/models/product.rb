class Product < ApplicationRecord
	mount_uploader :image, ImageUploader
	belongs_to :category
	has_many :supplier_lists
	has_many :outlet_lists
	has_many :storehouses
	has_many :product_attrs, dependent: :destroy
	has_many :order_lists
	validates :title, presence: true,
                    length: { minimum: 2 }
    validates :status, presence: true
end
