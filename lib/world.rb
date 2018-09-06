require_relative "challenge"
require_relative "game_helper"
include GameHelper

class World 
    def forest_location
        puts "Do you knock on the door?"
        choice = $stdin.gets.chomp
        if choice == "yes"
            puts " "
            Challenge.riddle
        else
            GameHelper.dead("forest_location")
            $story_failed = true
        end
    end
    def seaside_location
        puts "Are you game to gamble?"
        choice = $stdin.gets.chomp
        if choice == "yes" # put this text into story class and pull
            puts " "
            Challenge.mathgame
        else
            GameHelper.dead("seaside_location") 
            $story_failed = true
        end
    end
    def mountain_location
        puts "Do you venture inside?"
        choice = $stdin.gets.chomp
        if choice == "yes" # put this text into story class and pull
            puts " "
            Challenge.hangman
        else 
            GameHelper.dead("mountain_location")
            $story_failed = true
        end
    end
end