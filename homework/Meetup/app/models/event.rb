class Event < ActiveRecord::Base
  attr_accessible :happens, :title, :venue_id

  validates_presence_of :title
  validates :title, :uniqueness =>true

  belongs_to :venue
end
