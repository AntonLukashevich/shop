class User < ApplicationRecord
	has_many: phones
	has_many: emails
	belong_to: role
	belong_to: address
end
