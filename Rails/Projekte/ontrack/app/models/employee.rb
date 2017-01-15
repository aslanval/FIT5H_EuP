class Employee < ApplicationRecord
  belongs_to :project

    validates :nachname, presence: true
end
 