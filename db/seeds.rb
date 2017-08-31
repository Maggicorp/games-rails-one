# games = [{ teams: [{ name: 'Bulls', score: 812, players: [{ first_name: 'Danny', last_name: 'Ben', jersey_name: 12}] },
#                    { name: 'Spurs', score: 56, players: [{ first_name: 'Ben', last_name: 'Logan', jersey_name: 12}] }] },
#          { teams: [{ name: 'Celtics', score: 34, players: [{ first_name: 'Paul', last_name: 'Bryant', jersey_name: 12}] },
#                    { name: 'Spurs', score: 10000, players: [{ first_name: 'Helen', last_name: 'Rachel', jersey_name: 12}] }] },
#          { teams: [{ name: 'Lakers', score: 92, players: [{ first_name: 'Nick', last_name: 'Liz', jersey_name: 12}] },
#                    { name: 'Knicks', score: 786, players: [{ first_name: 'David', last_name: 'Bryant', jersey_name: 12}] }]
#                    }]



puts 'GAMES!'

spurs = Team.new({ name: 'spurs'})

spurs.players.push(Player.new({ first_name: 'Nick', last_name: 'Jas', jersey_name: 12}))

spurs.players.push(Player.new({ first_name: 'Sarah', last_name: 'Conner', jersey_name: 12}))

spurs.save

jets = Team.new({ name: 'jets'})

jets.players.push(Player.new({ first_name: 'Nora', last_name: 'Casey', jersey_name: 5}))

jets.players.push(Player.new({ first_name: 'Jasmine', last_name: 'Vazquez', jersey_name: 62}))

jets.save

game = Game.create

game.competing_teams.push(CompetingTeam.new({ score: 31 }))

# game.competing_teams[0].team = spurs

game.competing_teams.push(CompetingTeam.new({ score: 100 }))

# game.competing_teams[1].team = jets


game.save

puts 'End!'


  # game = Game.create
  # team1 = Team.new({ name: 'Lakers', score: 92})
  # team2 = Team.new({ name: 'Spurs', score: 56})
  # team1.game = game
  # team2.game = game
  # player1 = Player.new({ first_name: 'Nick', last_name: 'Liz', jersey_name: 12})
  # player2 = Player.new({ first_name: 'Jeff', last_name: 'Geoff', jersey_name: 211})
  # team1.players.push(player1)
  # team2.players.push(player2)
  # team1.save
  # team2.save

# games.each do |game_attrs|
#   game = Game.create
#   game_attrs[:teams].each do |team_attrs|
#     team = Team.new(team_attrs)
#     team.game = game
#     team.save
#     teams.each do |team_attrs|
#       team_attrs[:players].each do |player_attrs|
#         player = Player.new(player_attrs)
#         player.team = team
#         player.save
#       end
#     end
#   end
# end

puts 'Done.'
