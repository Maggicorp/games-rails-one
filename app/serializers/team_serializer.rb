class TeamSerializer < ActiveModel::Serializer
  attributes :id, :player_names, :score, :name
end
