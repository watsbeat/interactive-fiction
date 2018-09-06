class Character # status (HP, alive), intro (interpolate attributes)
    attr_accessor :name, :deaths, :win
    def initialize(args)
        name = args[:name]
        @name = name
        @deaths = 0
        @win = 0
        return "Welcome! Let's play RUBY QUEST FOR KIDS!"
    end
    # IDEA FOR RETURNING FROM GAME MODULES W/O QUITTING THE APP
    # def do_challenge
    #     player = self
    #     ui = args[:ui]
    #     answer = 
    #     if answer == true
    #         @win += 1
    #         return STORY_END
    #     elsif answer == false
    #         @deaths += 1
    #         return STORY_PLAYER_DEAD            
    #     end
    #     return true
    # end   
end