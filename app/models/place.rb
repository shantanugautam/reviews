class Place < ActiveRecord::Base
  validates :name, presence: true
  validates :description, presence: true, length: { minimum: 100 }
  validates :latitude, presence: true
  validates :longitude, presence: true
  validates :images, presence: true
  validates :url, presence: true, uniqueness: true
  validates :address, presence: true
  validates :offers, presence: true
end
