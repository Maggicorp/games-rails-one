class CompetingTeamSerializer < ActiveModel::Serializer
  attributes :id, :score

  has_many :teams
end
