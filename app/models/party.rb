class Party < ApplicationRecord
	has_many :complaints
	validates :name, presence: true
	validates :description, presence: true
	validate  :picture_size
	
	acts_as_commontable


	private

    # Validates the size of an uploaded picture.
    def picture_size
      if picture.size > 5.megabytes
        errors.add(:picture, "should be less than 5MB")
      end
    end
end
