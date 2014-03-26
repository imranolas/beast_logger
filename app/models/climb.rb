class Climb < ActiveRecord::Base
  belongs_to :session
  attr_accessible :difficulty, :grade, :state, :steepness, :session_id
end
