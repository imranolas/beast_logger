class Climb < ActiveRecord::Base
  belongs_to :session
  attr_accessible :difficulty, :grade, :state, :steepness, :session_id

  validates :difficulty, presence: true
  validates :grade, presence: true
  validates :state, presence: true
  validates :steepness, presence: true
  validates :session_id, presence: true

  scope :flash, where(state: 'flash')
  scope :redpoint, where(state: 'RP')
  scope :dnf, where(state: 'fail')
end
