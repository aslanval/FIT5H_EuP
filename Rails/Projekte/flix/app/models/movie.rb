class Movie < ApplicationRecord
	has_many :favorites, dependent: :destroy
	has_many :favoriters, through: :favorites, source: :user
end
 