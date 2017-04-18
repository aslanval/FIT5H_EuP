class User < ApplicationRecord
	has_secure_password
  belongs_to :department
  has_many :works, dependent: :destroy
  has_many :events, dependent: :destroy

  GENDER_OPTIONS =
  	'male',
  	'female'

  validates :lastname , :prename, :dateofbirth, :gender, presence: true
  validates :email ,presence: true, format: { with: /(\S+)@(\S+)/ }, uniqueness: { case_sensitive: false }
	validates :gender, inclusion: { in: GENDER_OPTIONS }

  def name
    "#{self.prename} #{self.lastname}"
  end

end
