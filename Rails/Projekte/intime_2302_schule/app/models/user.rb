class User < ApplicationRecord
	has_secure_password
  belongs_to :department
  has_many :holidays

	GRADE_OPTIONS = 
  	'admin',
  	'moderator',
  	'user'

  GENDER_OPTIONS =
  	'male',
  	'female'

  validates :lastname , :prename, :dateofbirth, :gender, :grade, presence: true
  validates :email ,presence: true, format: { with: /(\S+)@(\S+)/ }, uniqueness: { case_sensitive: false }
	validates :grade, inclusion: { in: GRADE_OPTIONS }
	validates :gender, inclusion: { in: GENDER_OPTIONS }

end
