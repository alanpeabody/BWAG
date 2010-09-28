class Event
  include Mongoid::Document

  field :name, :type => String
  field :date, :type => DateTime

  scope :upcoming, where(:date.gt => DateTime.now)
  scope :previous, where(:date.lt => DateTime.now) 
end
