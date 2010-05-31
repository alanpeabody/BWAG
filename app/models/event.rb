class Event < ActiveRecord::Base
  belongs_to :location  
  
  scope :upcoming, where("events.date >= ?", Date.today).order('events.date')
  scope :previous, where("events.date < ?", Date.today).order('events.date DESC')
  
  validates_presence_of :name, :description, :location_id  
  validates_length_of :name, :minimum => 10
end
