class Session < ActiveRecord::Base
  belongs_to :user
  has_many :climbs
  attr_accessible :location, :user_id

  def data
    arr = [
      ['Grade', 'Flash', 'RP', 'Fail']

    ]
    if climbs.any?
      grades = climbs.map(&:grade).uniq.sort
      grades.each do |grade|
        klimbs = climbs.where(grade: grade)
        arr << ["V#{grade}", klimbs.flash.count, klimbs.redpoint.count, klimbs.dnf.count]
      end
    else
      arr << ['0', 0, 0, 0]
    end
    arr
  end
end
