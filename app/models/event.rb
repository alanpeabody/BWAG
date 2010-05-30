class Event < ActiveRecord::Base
  belongs_to :location
    
  validates_presence_of :name, :description, :location_id
  
  validates_length_of :name, :minimum => 10
end
