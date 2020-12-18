class Phone < ApplicationRecord
	belongs_to :user

		validates :phone, presence: true,
                    length: { minimum: 7 }
end
