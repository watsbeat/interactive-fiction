class World
    def forest_location
        puts "You follow the path east into the enchanted forest. Night falls and you get very tired."
        puts "You see a cottage up ahead. Someone inside has lit a warm fire. It looks inviting. Do you knock on the door?"
        choice = $stdin.gets.chomp
        if choice == "yes"
            witch_cottage
        else
            puts "You really should have gone inside! A bear attacks you out of nowhere. You are viciously mauled to death."
            dead
        end
    end
    def witch_cottage
        puts "You summon the courage to knock on the door and are horrified when it swings open to reveal an evil witch."
        puts "If you cannot answer the witch's riddle correctly, she will cook you in her oven."
        Challenge.riddle
    end
    def seaside_location
        puts "You follow the path west towards the sea. You reach Mermaid Bay and find room in a disreputable inn."
        puts "The Pirate King is holding court at a nearby table. He catches you staring and drunkenly challenges you to a game of dice. Will you gamble?"
        choice = $stdin.gets.chomp
        if choice == "yes"
            puts "Here are the rules of the game..."
            puts "Beware! The Pirate King doesn't treat losers nicely."
            Challenge.gamble
        else
            puts "The Pirate King doesn't like cowards. He beats you to a bloody pulp."
            dead
        end
    end
    def mountain_location
        puts "You follow the winding northern path, which takes you high into the mountains. When the sun sets, it becomes bitterly cold."
        puts "Luckily, you find a cave in which you may take shelter. It seems a bit ominous, though... Do you venture inside?"
        choice = $stdin.gets.chomp
        if choice == "yes"
            puts "Brave traveller!"
            dragon_lair
        else 
            puts "You freeze to death in a snow blizzard."
            dead
        end
    end
    def dragon_lair
        puts "You venture inside the cave, but startle when a dragon come roaring out of the darkness. Fight for your life!"
        Challenge.battle
    end
end