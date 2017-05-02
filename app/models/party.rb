class Party < ApplicationRecord
	has_many :complaints
	validates :name, presence: true
	validates :description, presence: true
	validate  :picture_size
	
	acts_as_commontable


	private
end
