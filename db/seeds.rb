# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
  

    League.create!(name: "English Premier League" , location: "England")
    League.create!(name: "La Liga" , location: "Spain")
    League.create!(name: "Germain Bundesliga" , location: "Germany")
    
    
    Team.create!(name: "Chelsea" , location: "England" , league_id: 1)
    Team.create!(name: "Barcelona" , location: "Spain" , league_id: 2)
    Team.create!(name: "Bayern Munich" , location: "Germany" , league_id: 3)


    Player.create!(name: "Xavier" , goals: 28 , assists: 10)
    Player.create!(name: "Mason Mount" , goals: 21 , assists: 14)
    Player.create!(name: "Thierry Henry" , goals: 35 , assists: 8)
    Player.create!(name: "Ronaldinho" , goals: 100 , assists: 80)
    
    Contract.create!(length: 1, team_id: 1, player_id: 1)
    Contract.create!(length: 2, team_id: 2, player_id: 2)
    Contract.create!(length: 2, team_id: 3, player_id: 3)
    Contract.create!(length: 2, team_id: 3, player_id: 4)
    Contract.create!(length: 2, team_id: 1, player_id: 3)