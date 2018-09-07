require_relative "game_helper"
include GameHelper
require_relative "story"
require_relative "mathgame"
require_relative "hangman"
require_relative "ui"

class Challenge
    def self.riddle 
        UI.new.draw_frame({:text => $story.riddle_intro})
        puts " "
        puts "WHAT AM I?"
        riddle_answer = gets.chomp
        if riddle_answer.include? "echo" # use ternary operator here instead?
            puts " "
            GameHelper.win("riddle")
            puts " "
            $story_ended = true
        else
            puts " "
            GameHelper.dead("riddle")
            puts " "
            $story_failed = true
        end
    end
    def self.mathgame
        extend MathGame
        puts " "
        MathGame.play
        GameHelper.win("mathgame")
        puts " "
        $story_ended = true
    end
    def self.hangman
        UI.new.draw_frame({:text => $story.hangman_intro})
        puts " "
        extend Hangman
        Hangman.play
        #if Hangman.play
            GameHelper.win("hangman")
            $story_ended = true
        #else
            # GameHelper.dead("hangman")
            # $story_failed = true
        # end
    end
end