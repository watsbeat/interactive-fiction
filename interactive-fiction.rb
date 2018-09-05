require_relative "character"
require_relative "world"
require_relative "challenge"
require_relative "game_helper"
include GameHelper

class Story
#ACTIONS = [:left, :right, :straight_ahead, :fight, :flee] etc.
    def initialize
        @world = World.new
        @character = Character.new
        @start = start
    end
    def start
        Character.name
        puts "Welcome, #{@character.name}!"
        puts "You are embarking on a quest to rescue the lost princess."
        puts "There are three roads leaving the city: east, west, and north."
        puts "Which road do you take?"
        choice = $stdin.gets.chomp
        if choice == "east"
            go_to = World.new()
            go_to.forest_location
        elsif choice == "west"
            go_to = World.new()
            go_to.seaside_location
        elsif choice == "north"
            go_to = World.new()
            go_to.mountain_location
        else
            GameHelper.dead("start")
        end
    end
end

character = Character.new()
story = Story.new
story.start