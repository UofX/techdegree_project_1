/* Manually create a single collection named 'players' that contains all information for all 18 players. Each player must themselves be represented by a Dictionary with String keys and the corresponding values.let players: [String: Any] = [ */
let players: [[String: Any ]] = [
    ["name": "Joe Smith", "height": 42.0, "isExperienced": true, "guardians": "Jim and Jan Smith"],
    ["name": "Jill Tanner", "height": 36.0, "isExperienced": true, "guardians": "Clara Tanner"],
    ["name": "Bill Bon", "height": 43.0, "isExperienced": true, "guardians": "Sara and Jenny Bon"],
    ["name": "Eva Gordon", "height": 45.0, "isExperienced": false, "guardians": "Wendy and Mike Gordon"],
    ["name": "Matt Gill", "height": 40.0, "isExperienced": false, "guardians": "Charles and Sylvia Gill"],
    ["name": "Kimmy Stein", "height": 41.0, "isExperienced": false, "guardians": "Bill and Hillary Stein"],
    ["name": "Sammy Adams", "height": 45.0, "isExperienced": false, "guardians": "Jeff Adams"],
    ["name": "Karl Saygan", "height": 42.0, "isExperienced": true, "guardians": "Heather Blesdoe"],
    ["name": "Suzanne Greenberg", "height": 44.0, "isExperienced": true, "guardians": "Henrietta Dumas"],
    ["name": "Sal Dali", "height": 41.0, "isExperienced": false, "guardians": "Gala Dali"],
    ["name": "Joe Kavalier", "height": 39.0, "isExperienced": false, "guardians": "Sam and Elaine Kavalier"],
    ["name": "Ben Finkelstein", "height": 44.0, "isExperienced": false, "guardians": "Aaron and Jill Finkelstein"],
    ["name": "Diego Soto", "height": 41.0, "isExperienced": true, "guardians": "Robin and Sarika Soto"],
    ["name": "Chloe Alaska", "height": 47.0, "isExperienced": false, "guardians": "David and Jaime Alaska"],
    ["name": "Arnold Willis", "height": 43.0, "isExperienced": false, "guardians": "Claire Willis"],
    ["name": "Philip Helm", "height": 44.0, "isExperienced": true, "guardians": "Thomas Helm and Eva Jones"],
    ["name": "Les Clay", "height": 42.0, "isExperienced": true, "guardians": "Wynonna Brown"],
    ["name": "Herschel Krustofski", "height": 46.0, "isExperienced": true, "guardians": "Hyman and Rachel Krustofski"]
]

/* Create appropriate constants and logic to sort and store players into three teams: Sharks, Dragons and Raptors. Store the players for each team in a collection named 'teamSharks', 'teamDragons', and 'teamRaptors'. Be sure that your logic results in all teams having the same number of experienced players on each. */

// Create empty arrays for experienced and inexperienced
var experiencedPlayers = [[String: Any]] ()
var inExperiencedPlayers = [[String: Any]] ()
// this is to seperate experienced and inexperienced players into two groups
for player in players {
    if let isExperienced = player["isExperienced"] as? Bool {
        switch isExperienced {
        case true: experiencedPlayers.append(player)
        case false: inExperiencedPlayers.append(player)
        }
    }
}
// This is my empty arrays for the team and then the team in league
var teamDragons = [[String: Any]] ()
var teamSharks = [[String: Any]] ()
var teamRaptors = [[String: Any]] ()
var theLeague = [[String: Any]] ()
var team = [teamSharks, teamDragons, teamRaptors]

// function splitting team players into groups


for player in experiencedPlayers {
    if teamDragons.count < teamSharks.count || teamDragons.count < teamRaptors.count {
        teamDragons.append(player)
    } else if teamSharks.count < teamDragons.count || teamSharks.count < teamRaptors.count {
        teamSharks.append(player)
    } else {
        teamRaptors.append(player)
    }
}

for player in inExperiencedPlayers {
    if teamDragons.count < teamSharks.count || teamDragons.count < teamRaptors.count {
        teamDragons.append(player)
    } else if teamSharks.count < teamDragons.count || teamSharks.count < teamRaptors.count {
        teamSharks.append(player)
    } else {
        teamRaptors.append(player)
    }
}

//checking results
teamDragons
teamRaptors
teamSharks

// checking average of players needed to be in each team 
// var teamCount = 18 / 3

// Create team names with schedule

let dragonsPractice = "March 17th at 1pm"
let sharksPractice = "March 17th at 3pm"
let raptorsPractice = "March 18th at 1pm"

// Create team name to use for letter function
let teamNameDragon = "Dragons"
let teamNameSharks = "Sharks"
let teamNameRaptors = "Raptors"

// Letter var
var letters = [String]()

for player in teamDragons {
    if let guardians = player["guardians"], let name = player["name"] {
        let myLetter: String = "Dear \(guardians). \(name) has been placed on team \(teamNameDragon). Time of practic is as follows:  \(dragonsPractice)."
        letters.append(myLetter)
        print(teamDragons)
    }
}


for player in teamSharks {
    if let guardians = player["guardians"], let name = player["name"] {
        let myLetter: String = "Dear \(guardians). \(name) has been placed on team \(teamNameSharks). Time of practice is as follows: \(sharksPractice)."
        letters.append(myLetter)
        print(teamNameSharks)
    }
}


for player in teamRaptors {
    if let guardians = player["guardians"], let name = player["name"] {
        let myLetter: String = "Dear \(guardians). \(name) has been placed on team \(teamNameRaptors). Time of practice is as follows:  \(raptorsPractice)."
        letters.append(myLetter)
        print(teamRaptors)
    }
}

// Print out letters to all players guardians addeed \n to it to give spacing to letter output 


// end of project created by Ulises 
