Game.destroy_all
PlayoffBracket.destroy_all
User.destroy_all
Player.destroy_all
Team.destroy_all


team1 = Team.new(name: "team1", conference: "dev", division: "north")
team2 = Team.new(name: "team2", conference: "dev", division: "north")

player1 = Player.new(name: "player1", team: team1.id, number: 21, position: "PG")
player2 = Player.new(name: "player2", team: team1.id, number: 1, position: "SG")
player3 = Player.new(name: "player3", team: team1.id, number: 11, position: "F")
player4 = Player.new(name: "player4", team: team1.id, number: 41, position: "F")
player5 = Player.new(name: "player5", team: team1.id, number: 14, position: "C")
player6 = Player.new(name: "player6", team: team2.id, number: 5, position: "PG")
player7 = Player.new(name: "player7", team: team2.id, number: 26, position: "SG")
player8 = Player.new(name: "player8", team: team2.id, number: 16, position: "F")
player9 = Player.new(name: "player9", team: team2.id, number: 20, position: "F")
player10 = Player.new(name: "player10", team: team2.id, number: 29, position: "C")


game1 = Game.new(home_team: team1.id, away_team: team2.id, final_score: "104-100")
game2 = Game.new(home_team: team1.id, away_team: team2.id, final_score: "91-94")
game3 = Game.new(home_team: team2.id, away_team: team1.id, final_score: "104-111")
game4 = Game.new(home_team: team2.id, away_team: team1.id, final_score: "99-103")
game5 = Game.new(home_team: team1.id, away_team: team2.id, final_score: "117-100")

user1 = User.new(name: "user1", password: "1111", photo: "myphoto.jpg")

pb1 = PlayoffBracket.new(user_id: user1.id)

