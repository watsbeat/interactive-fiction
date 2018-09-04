class Character # status (HP, alive or dead), intro (interpolate attributes)
    def initialize
        @name
    end
    def name
        puts "What's your name?"
        name = gets.chomp.to_s
    end
end

class Villians # witch, pirate_king, dragon
end