class Route
  include Mongoid::Document
  include Mongoid::Timestamps
  field :uuid, type: String
  field :locations, type: Array
  field :_id, type: String, default: ->{ uuid }
  validates :uuid, :locations, :presence => true
  validates :uuid, :uniqueness => true
  index locations: "2d"
end
