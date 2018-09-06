#Simple math game to practice addition, subtraction and multiplication with negative numbers
# This particular challenge will address the teaching standards 

module MathGame
    class << self
def play
    print("\nChoose your challenge! \n1 = Addition\n2 = Subtraction\n3 = Multiplication\n4 = Random\n")
    choice = gets.to_i #gets returns a String. Ruby never autoconverts to Integer, so to_i does that.
    firstchoice = choice #necessary to have the random choice carried out properly
    rounds = 1 #gets returns a String. Ruby never autoconverts to Integer, so to_i does that.

    #Defining the values to be factored into the questions
    addminusmax = (-10..10) #The max number of add and minus calcs
    factormax = 12 #The max number of factor
    try = nil

    while rounds > 0
        # Defining & resetting variables
        if firstchoice == 4 #if the choice is 4, from now on, keep looping the random numbers for each round
        choice = 1 + rand(3) #the 1 + thing makes it a random draw from 1 to 3 instead of 0 to 3
        end
        ctries = 0 #default try count
        aaddminus = rand(addminusmax)
        baddminus = rand(addminusmax)
        cfactormax = 1 + rand(factormax)
        dfactormax = 1 + rand(factormax)
    
        # Asking the questions
        if choice == 1
            result = aaddminus + baddminus
            puts "What is the result of #{aaddminus} + #{baddminus}?"
        elsif choice == 2
            result = aaddminus - baddminus
            puts "What is the result of #{aaddminus} - #{baddminus}?"
        elsif choice == 3
            result = cfactormax * dfactormax
            puts "What is the result of #{cfactormax} * #{dfactormax}?"
        end  
    
        # Check the answers
        rounds = 0
        while try != result and rounds < 2
        rounds += 1
            try = gets.to_i  #gets returns a String. Ruby never autoconverts to Integer, so to_i does that.      
            ## this needs ot change to only allow for 2 tries by the user. Once the second user is done then it continues to the death class.
            if (try < result)
            puts "Incorrect. Try again! Hint: it's bigger..."  # INCORRECT IS INFINITE
            elsif (try > result)
            puts "Incorrect. Try again! Hint: it's smaller..." ## perhaps this solution should also include remember your number line!
            end
            if try == result #if answer is correct
                print " #{result} is correct! \n\n" ## output extra information story wise
            end
        end

    end
end
end
end

###after two incorrect answers pull from deathclass. 
## after correct answer pull from next quest class