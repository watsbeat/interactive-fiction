require_relative "character"
require_relative "world"
require_relative "challenge"
require_relative "story"
require_relative "ui"
require_relative "game_helper"
include GameHelper

# history = []
# require "json"
# File.write("hi$story.json", JSON.dump(history))
# history = JSON.parse(File.read("hi$story.json"))
# saved_story = history[] || 0

# while application_runtime
#     puts "What would you like to do?"
#     options = gets.chomp
#     if options == "load saved adventure"

# create a new UI and world
ui = UI.new
world = World.new

# clear the screen and print welcome message
#ui.clear
ui.welcome

# ask name
name = ui.ask("What's your name?", /\w/)

# create a new player
player = Character.new({name: name, world: world})

# show intro story
ui.new_line
$story = Story.new
$story_ended = false
$story_failed = false
ui.draw_frame({text: $story.intro})

#MAIN INPUT LOOP
running = 1
while running
    ui.new_line

# Get command from user
    cmd = ui.get_cmd
    case cmd
    when "clear", "cls" # not working! How do we clear the console? 
        ui.clear
    when "west", "w", "left", "l"
        ui.new_line
        ui.draw_frame({text: $story.seaside_description})
        ui.new_line
        go_to = World.new()
        go_to.seaside_location
    when "north", "n", "up", "u"
        ui.new_line
        ui.draw_frame({text: $story.mountain_description})
        ui.new_line
        go_to = World.new()
        go_to.mountain_location
    when "east", "e", "right", "r"
        ui.new_line
        ui.draw_frame({text: $story.forest_description})
        ui.new_line
        go_to = World.new()
        go_to.forest_location
    when "quit", "exit"
        ui.quit
        running = nil
    when "help", "h"
        ui.help
    else
        puts ui.cmd_not_found
    end

# Player has won the Ruby Quest!
    if $story_ended #true
        ui.draw_frame({text: $story.ending})
        ui.new_line
        running = false

# Player has died tragically!
    elsif $story_failed # true
        ui.draw_frame({text: $story.failed})
        ui.new_line
        running = false
    end
end
