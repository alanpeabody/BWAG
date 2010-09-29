class Event
  include Mongoid::Document

  field :name, :type => String
  field :date, :type => DateTime
  field :description, :type => String

  index :date

  validates_presence_of :name, :date

  scope :upcoming, where(:date.gt => DateTime.now)
  scope :previous, where(:date.lt => DateTime.now)

  referenced_in :location 
end
