class Session < ActiveRecord::Base
  belongs_to :user
  attr_accessible :location
end
