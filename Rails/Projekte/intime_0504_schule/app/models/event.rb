class Event < ApplicationRecord
  belongs_to :user
	validates :title, presence: true
  attr_accessor :date_range

  def all_day_event?
    self.start == self.start.midnight && self.end == self.end.midnight ? true : false
  end

  scope :seminar, -> { where(color: "black")}
  scope :holiday, -> { where(color: "green")}
  scope :project, -> { where(color: "red")}
  scope :other, -> { where(color: "")}
end
