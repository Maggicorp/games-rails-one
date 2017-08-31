class CompetingTeam < ApplicationRecord
  has_many :teams
  belongs_to :game
end
