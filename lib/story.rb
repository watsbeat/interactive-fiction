class Story

    STORY_INTRO = [
        "In a faraway kingdom, there is an old King who fears he will die without an heir",
        " ",
        "For the good of his people, he has declared that whosoever proves themselves worthy shall have inherit his crown.",
        " ",
        "They must defeat the challenges and collect a prized ruby.",
        " ",
        "You have chosen to embark upon this quest. You stand outside the King's castle, contemplating the road ahead.",
        " ",
        "After walking for a while, you reach a cross-roads. There are three paths: west, north, and east.",
    ]

    STORY_PLAYER_DEAD = [
        "You've died, failing to complete your quest.",
        " ",
        "Please try again.",
    ]

    STORY_END = [
        "Congratulations! You've reached the end of your quest.",
        " ",
        "You return to the King's castle and present your hard-won rubies.",
        " ",
        "The King rewards your valour - and proven numeracy and literacy skills - by naming you his heir.",
        " ",
        "The King declares:",
        " ",
        "To be worthy ruler, you must keep your skills honed. Your ruby quest may be over, but your educational journey is ongoing.",
        " ",
        "By always believing you can improve, you can find the strength to push through challenges and achieve greater intellectual heights.",
        " ",
        "YOU'RE A LITERACY & NUMERACY CHAMPION!",
        " ",
        "Thanks for playing RUBY QUEST FOR KIDS!",
    ]

    STORY_MOUNTAIN = [
        "You follow the winding northern path, which takes you high into the mountains.",
        " ",
        "When the sun sets, it becomes bitterly cold.",
        " ",
        "Luckily, you find a cave in which you may take shelter. It seems a bit ominous, though...",
    ]

    STORY_FOREST = [
        "You follow the path east into the enchanted forest.",
        " ",
        "Night falls and you get very tired.",
        " ",
        "You see a cottage up ahead. Someone inside has lit a warm fire.",
        " ",
        "It looks inviting.",
    ]

    STORY_SEASIDE = [
        "You follow the path west towards the sea. You reach Mermaid Bay and stop-by in a disreputable inn.",
        " ",
        "Inside you order a drink and watch patrons idly. The Pirate King is holding court at a nearby table.",
        " ",
        "He catches you staring and drunkenly challenges you to a game of dice.",
    ]

    STORY_RIDDLE = [
        "You summon the courage to knock on the door. It swings open to reveal an evil witch!",
        " ",
        "The witch challenges you to a riddle - gah!",
        " ",
        "If you cannot answer the witch's riddle correctly, she will cook you in her oven.", 
        " ",
        "'Many have heard me, but no one has seen me, and I will not speak back until spoken to.'",
    ]

    STORY_MATHGAME = [
        "Beware! The Pirate King doesn't treat losers nicely.",
        " ",
        "You sit down at the table, but there's no dice! Instead, you'll be going head-to-head in a maths competition.",
    ]

    STORY_HANGMAN = [
        "What a brave traveller you are! And, perhaps, a bit misguided...",
        " ",
        "You venture inside the cave, but startle when a dragon comes roaring out of the darkness.",
        " ",
        "FIGHT FOR YOUR LIFE!",
    ]

    def intro
        return STORY_INTRO
    end

    def ending
        return STORY_END
    end

    def failed
        return STORY_PLAYER_DEAD
    end

    def mountain_description
        return STORY_MOUNTAIN
    end

    def forest_description
        return STORY_FOREST
    end

    def seaside_description
        return STORY_SEASIDE
    end

    def riddle_intro
        return STORY_RIDDLE
    end

    def mathgame_intro
        return STORY_MATHGAME
    end

    def hangman_intro
        return STORY_HANGMAN
    end

end