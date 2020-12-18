class User < ApplicationRecord

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable
         
	has_many :phones 
	has_many :orders
	has_many :emails
	belongs_to :role
	belongs_to :address
	
	accepts_nested_attributes_for :address, allow_destroy: true


	validates :title, presence: true
                    
end
