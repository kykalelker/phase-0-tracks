# Create a hash of actors containing the following information: 
# their nationality(hash), name (hash) their age, top performances (hash) 
# and the memorable characters they've played (arrays)

actors = {
  american: {
    bryan_cranston: {
      age: 61,
      top_performances: {
        trumbo: "Dalton Trumbo",
        breaking_bad: "Walt White",
        malcolm_in_the_middle: "Hal"
      },
      memorable_characters: ["Heisenberg", "Tim Whatley", "Bumbling Dad"]
    },
    peter_dinklage: {
      age: 47,
      top_performances: {
        the_station_agent: "Finbar McBride", 
        game_of_thrones: "Tyrion Lannister"
        },
        memorable_characters: ["The Imp"]
    }
  },
  british: {
    hugh_laurie: {
      age: 57,
      top_performances: {
        house_md: "Gregory House", 
        chance: "Eldon Chance",
        veep: "Tom James"
        },
        memorable_characters: ["House"]
    },
    david_tennant: {
      age: 46,
      top_performances: {
        the_escape_artist: "Will Burton", 
        jessica_jones: "Kilgrave", 
        broadchurch: "Alec Hardy"
      },
      memorable_characters: ["Barty Crouch Jr", "Doctor Who"]
    },
    christian_bale: {
      age: 43,
      top_performances: {
        the_dark_knight: "Bruce Wayne",
        american_hustle: "Irving Rosenfeld",
        the_machinist: "Trevor Reznik",
        the_big_short: "Michael Burry" 
        },
      memorable_characters: ["Batman", "American Psycho"]
    }
  },
  australian: {
    hugh_jackman: {
      age: 48,
      top_performances: {
        the_prestige: "Robert Angier", 
        prisoners: "Keller Dover",
        les_miserables: "Jean Valjean"
        },
      memorable_characters: ["Wolverine", "Leopold"]
    },
    chris_hemsworth: {
      age: 33,
      top_performances: {
        rush: "James Hunt",
        in_the_heart_of_the_sea: "Owen Chase"
        },
        memorable_characters: ["Thor", "The Huntsman"]
    }
  } 
}
p actors

# Print out examples of nested data
# 1. Print Heisenberg
puts actors[:american][:bryan_cranston][:memorable_characters][0]
# 2. Print Michael Burry
puts actors[:british][:christian_bale][:top_performances][:the_big_short]
# 3. Print The Huntsman
puts actors[:australian][:chris_hemsworth][:memorable_characters][1]
# 4. Print David tennant's age
puts actors[:british][:david_tennant][:age]
# 5. Print Tom James
puts actors[:british][:hugh_laurie][:top_performances][:veep]