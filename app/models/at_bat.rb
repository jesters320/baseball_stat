class AtBat
  include Mongoid::Document
  field :game_id, type: String
  field :at_bat_id, type: String
  field :inning, type: String
  field :player_id, type: String
  field :balls_and_strikes, type: String
  field :balls, type: String
  field :strikes, type: String
  field :current_pitch_call, type: String
  field :scorecard, type: String
  field :hit_location, type: String
  field :current_pitcher, type: String
end
