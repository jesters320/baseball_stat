class Team
  include Mongoid::Document
  
  field :code, type: String
  field :league, type: String
  field :location, type: String
  field :name, type: String
  
end
