class Order < ApplicationRecord
  belongs_to :user
  has_many :order_lists

  validates :status, presence: true,
                    length: { minimum: 2 }
end
