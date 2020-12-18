class Address < ApplicationRecord
	has_one :user

	validates :address, presence: true,
                    length: { minimum: 2 }

end
