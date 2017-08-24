games = [{ teams: [{ name: 'Bulls', score: 812, players: [{ first_name: 'Danny', last_name: 'Ben', jersey_name: 12}] },
                   { name: 'Spurs', score: 56, players: [{ first_name: 'Ben', last_name: 'Logan', jersey_name: 12}] }] },
         { teams: [{ name: 'Celtics', score: 34, players: [{ first_name: 'Paul', last_name: 'Bryant', jersey_name: 12}] },
                   { name: 'Spurs', score: 10000, players: [{ first_name: 'Helen', last_name: 'Rachel', jersey_name: 12}] }] },
         { teams: [{ name: 'Lakers', score: 92, players: [{ first_name: 'Nick', last_name: 'Liz', jersey_name: 12}] },
                   { name: 'Knicks', score: 786, players: [{ first_name: 'David', last_name: 'Bryant', jersey_name: 12}] }] }]

puts 'Seeding 3 games...'

games.each do |game_attrs|
  game = Game.create
  game_attrs[:teams].each do |team_attrs|
    team = Team.new(team_attrs)
    teams_attrs[:players].each do |player_attrs|
      player = Players.new(players_attrs)
      player.team = team
      player.save
    end
    team.game = game
    team.save
  end
end

puts 'Done.'
