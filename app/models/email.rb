class Email < ApplicationRecord
	validates :email, presence: true,
                    length: { minimum: 6 }
end
