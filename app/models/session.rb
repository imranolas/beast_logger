class Session < ActiveRecord::Base
  belongs_to :user
  has_many :climbs
  attr_accessible :location
end
