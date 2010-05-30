class Event < ActiveRecord::Base
  belongs_to :location
    
  validates_presence_of :name, :description, :location_id
end
