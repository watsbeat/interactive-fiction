class Challenge
    def self.riddle
        puts "Many have heard me, but no one has seen me, and I will not speak back until spoken to. What am I?"
        riddle_answer = gets.chomp
        if riddle_answer.include? "echo"
            puts "Riddle solved!"
        else
            puts "Wrong guess! The witch drags you to her oven and thrusts you into its fiery depths."
            dead
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
            puts "You mess up the spell and get melted in the dragon's breath. Tough luck, #{@character.name}!"
            dead
        end
    end
end