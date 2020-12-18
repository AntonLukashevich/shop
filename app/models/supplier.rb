class Supplier < ApplicationRecord
	has_many :supplier_lists, dependent: :destroy

	validates :title, presence: true,
                    length: { minimum: 4 }
end
