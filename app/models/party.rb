class Party < ApplicationRecord
	has_many :complaints
	acts_as_commontable
end
