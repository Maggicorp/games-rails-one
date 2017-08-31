class Team < ApplicationRecord
  belongs_to :competing_team
  has_many :players
end
