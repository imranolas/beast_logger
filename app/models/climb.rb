class Climb < ActiveRecord::Base
  belongs_to :session
  attr_accessible :difficulty, :grade, :state, :steepness, :session_id

  scope :flash, where(state: 'flash')
  scope :redpoint, where(state: 'RP')
  scope :dnf, where(state: 'fail')
end
