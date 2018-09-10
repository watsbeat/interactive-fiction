module GameHelper
    def dead(reason) # if you lose the challenge
        # scoring?
        case reason
        when "start"
            puts "You linger too long at the cross-roads and are crushed by a passing donkey-cart."
        when "forest_location"
            puts "You really should have gone inside! A bear attacks you out of nowhere. You are viciously mauled."
        when "hangman"
            puts "You mess up the spell and get melted in the dragon's breath. Tough luck!" # interpolate character name?
        when "riddle"
            puts "Wrong guess! The witch drags you to her oven and thrusts you into its fiery depths."
        when "mathsgame"
            puts "The Pirate King is an unexpectedly good mathematician. He decides to celebrate his victory by making you walk the plank."
        when "mountain_location"
            puts "You freeze in a snow blizzard."
        when "seaside_location"
            puts "The Pirate King doesn't like cowards. He beats you to a bloody pulp."
        end
        
    end
    def win(reason) # if you win the challenge
        case reason
        when "riddle"
            puts "You solved the riddle! The witch rewards you with the ruby."
        when "mathsgame"
            puts "You take the Pirate King for all he's worth. He grudgingly hands over the ruby."
        when "hangman"
            puts "You cast the spell perfectly and shrink the dragon to the size of a field-mouse. You are free to take the ruby from its hoard."
        end
    end
end