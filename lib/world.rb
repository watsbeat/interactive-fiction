require_relative "challenge"
require_relative "game_helper"
include GameHelper

class World 
    def forest_location
        puts "Do you knock on the door?"
        choice = $stdin.gets.chomp
        if choice == "yes"
            Challenge.riddle
        else
            puts " "
            GameHelper.dead("forest_location")
            puts " "
            $story_failed = true
        end
    end
    def seaside_location
        puts "Are you game to gamble?"
        choice = $stdin.gets.chomp
        if choice == "yes" # put this text into story class and pull
            Challenge.mathgame
        else
            puts " "
            GameHelper.dead("seaside_location")
            puts " "
            $story_failed = true
        end
    end
    def mountain_location
        puts "Do you venture inside?"
        choice = $stdin.gets.chomp
        if choice == "yes" # put this text into story class and pull
            Challenge.hangman
        else 
            puts " "
            GameHelper.dead("mountain_location")
            puts " "
            $story_failed = true
        end
    end
end