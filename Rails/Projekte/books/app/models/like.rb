class Like < ApplicationRecord
  belongs_to :book

  ZAHLEN =
  1,
  2,
  3,
  4,
  5

  validates :quality, inclusion: { in: ZAHLEN }
end
