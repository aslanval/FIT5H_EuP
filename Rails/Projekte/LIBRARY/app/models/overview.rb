class Overview < ApplicationRecord
	has_many :books
	has_many :lendings
end
