class EntryPoint < ActiveRecord::Base
  attr_accessible :districtName, :lattitude, :longitude, :name, :stateName, :entryType

  validates_presence_of :districtName
  validates_presence_of :stateName
  validates_presence_of :lattitude
  validates_presence_of :longitude
  validates_presence_of :name

  validates :entryType, :inclusion => { :in => ["airport", "railway"] }

end
