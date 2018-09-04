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
            puts "You linger too long at the cross-roads and are crushed to death by a passing donkey-cart."
        end
    end
end

class World
    def forest_location
        puts "You follow the path east into the enchanted forest. Night falls and you get very tired."
        puts "You see a cottage up ahead. Someone inside has lit a warm fire. It looks inviting. Do you knock on the door?"
        choice = $stdin.gets.chomp
        if choice == "yes"
            witch_cottage
        else
            puts "You really should have gone inside! A bear attacks you out of nowhere. You are visciously mauled to death."
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

class Character # status (HP, alive or dead), intro (interpolate attributes)
    def initialize
        @name
    end
    def name
        puts "What's your name?"
        name = gets.chomp.to_s
    end
end

class Items # weapons, potions, boons/keys etc.
end

class Villians # witch, pirate_king, dragon
end

class Combat # link to battle method
end

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
    end
end

# deaths
def dead # refactor to print dead(reason)
    exit(0)
end

character = Character.new()
story = Story.new
story.start