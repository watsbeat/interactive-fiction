require_relative "character"
require_relative "game_helper"
require_relative "world"
require_relative "challenge"
#require_relative "interactive-fiction"

# CURRENT
player.instance_of?

GameHelper.dead("riddle")
player.deaths += 1
puts player.deaths

=begin
# PASSES
# GameHelper.dead("seaside_location") # output string describing death

# FAILS
GameHelper.dead("seaside_location")
puts player.deaths
    # e: output string and increase to dead = 1
    # r: wrong no. arguments for dead (2 given, 0 expected).
    # a: delete extra dead method in module
    # r: undefined method or variable player
    # a: changed player instance of Character class to Class itself
    # r: wrong no. arguments for dead method (0 given, 2 expected)
    # a: renamed @dead, so no confusion.
    # r: undefined method deaths for Character class
    # idea: make player variable global or accessible in module
print Character.deaths # 0
=end