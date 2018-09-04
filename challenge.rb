require_relative "game_helper"
include GameHelper # what exactly is this doing??

class Challenge
    def self.riddle
        puts "Many have heard me, but no one has seen me, and I will not speak back until spoken to. What am I?"
        riddle_answer = gets.chomp
        if riddle_answer.include? "echo"
            puts "Riddle solved!"
        else
            GameHelper.dead("riddle")
        end
    end
    def self.gamble # define
    end
    def self.battle # define
        puts "Your wizard friend... Gapfill!"
        puts "The sky ______ blue."
        gapfill_answer = gets.chomp
        if gapfill_answer == "is"
            puts "You cast the spell perfectly and shrink the dragon to the size of a field-mouse."
        else
            GameHelper.dead("dragon_lair")
        end
    end
end