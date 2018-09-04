module GameHelper
    def dead(reason)
        # scoring?
        case reason
        when "forest_location"
            puts "You really should have gone inside! A bear attacks you out of nowhere. You are viciously mauled to death."
        when "dragon_lair"
            puts "You mess up the spell and get melted in the dragon's breath. Tough luck!" # interpolate character name
        when "riddle"
            puts "Wrong guess! The witch drags you to her oven and thrusts you into its fiery depths."
        when "mountain_location"
            puts "You freeze to death in a snow blizzard."
        when "seaside_location"
            puts "The Pirate King doesn't like cowards. He beats you to a bloody pulp."
        end
        exit(0)
    end
end