class Course < ApplicationRecord
	has_one_attached :image
	# belongs_to :learning
	has_many :syllabuses
	

end
