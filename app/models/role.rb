class Role < ApplicationRecord
	has_many :users

	validates :title, presence: true,
                    length: { minimum: 4 }
end
