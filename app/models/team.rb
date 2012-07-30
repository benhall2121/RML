class Team < ActiveRecord::Base

  validates_presence_of :email
  validates_uniqueness_of :email

  validates_presence_of :quick_pitch

end
