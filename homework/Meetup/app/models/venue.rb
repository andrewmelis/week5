class Venue < ActiveRecord::Base
  attr_accessible :address, :name

  validates_presence_of :name

  validates :address, :uniqueness =>true

  has_many :events

end
