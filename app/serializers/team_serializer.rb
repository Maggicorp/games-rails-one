class TeamSerializer < ActiveModel::Serializer
  attributes :id, :score, :name

  has_many :players
end
