class Party < ApplicationRecord
	has_many :complaints
	validates :name, presence: true
	validates :description, presence: true
	
	acts_as_commontable
end
