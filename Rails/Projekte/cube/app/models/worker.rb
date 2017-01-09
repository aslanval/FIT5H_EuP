class Worker < ApplicationRecord
	has_many :tasks, dependent: :destroy
end
 