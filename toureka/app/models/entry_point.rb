class EntryPoint < ActiveRecord::Base
  attr_accessible :districtName, :latitude, :longitude, :name, :stateName, :entryType, :gmaps

  has_many :closest_hotels
  has_many :hotels , through: :closest_hotels

  validates_presence_of :districtName
  validates_presence_of :stateName
  validates_presence_of :latitude
  validates_presence_of :longitude
  validates_presence_of :name

  validates :entryType, :inclusion => { :in => ["airport", "railway"] }

end
