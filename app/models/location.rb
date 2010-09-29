class Location
  include Mongoid::Document

  field :name, :type => String
  field :address1, :type => String
  field :address2, :type => String
  field :city, :type => String, :default => 'Burlington'
  field :state, :type => String, :default => 'VT'
  field :notes, :type => String

  references_many :events
end
