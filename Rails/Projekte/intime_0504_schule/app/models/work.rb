class Work < ApplicationRecord
  belongs_to :user
  before_update :u_diff
  before_create :u_diff

  def u_diff
  	if self.end == nil
  	else
	    diff = self.end - self.start
	    self.diff = diff
  	end
  end
end