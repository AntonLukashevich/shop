class Outlet < ApplicationRecord
	has_many :outlet_lists

	validates :title, presence: true,
                    length: { minimum: 5 }
end
