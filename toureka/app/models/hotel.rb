class Hotel < ActiveRecord::Base
  attr_accessible :description, :districtName, :lattitude, :longitude, :name, :stateName

  has_many :near_bies
  has_many :local_transport_stands, through: :near_bies

  has_many :in_proximity_ofs
  has_many :tourist_spots, through: :in_proximity_ofs

  has_many :closest_hotels
  has_many :entry_points , through: :closest_hotels

  validates_presence_of :districtName
  validates_presence_of :stateName
  validates_presence_of :lattitude
  validates_presence_of :longitude
  validates_presence_of :name
end
