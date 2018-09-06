# UI CLASS
require 'colorize'

UI_FRAME_HORIZONTAL = "\u2501"
UI_FRAME_VERTICAL = "\u2503"
UI_FRAME_UPPER_LEFT = "\u250F"
UI_FRAME_LOWER_LEFT = "\u2517"
UI_FRAME_UPPER_RIGHT = "\u2513"
UI_FRAME_LOWER_RIGHT = "\u251B"

UI_ARROW = "\u2712"

class UI
    
    # clear the screen
    def clear
        system("cls") # not working - find the right command!
    end

    # display welcome
    def welcome
        text = Array.new
        text << "RUBY QUEST FOR KIDS"
        text << "Written by Caitlin & Michelle"
        draw_frame ({:text => text})
        new_line
    end

    # help
    def help
        new_line
        print "Valid Commands".light_green
        new_line(2)
        print "clear, cls" + " - clears the screen"
        new_line
        print "quit, exit" + " - quits the game"
        new_line
        print "west, w, left, l" + " - move west (left)"
        new_line
        print "north, n, up, u" + " - move north (up)"
        new_line 
        print "east, e, right, r" + " - move east (right)"
        new_line
        # print "south, s, down, d" + " - move south (down)"
        # new_line
    end

    # prints a new line or multiple lines
    def new_line(times = 1)
        times.times do
            print "\n"
        end
    end

    def quit
        new_line
        print "You have quit your quest. The King will be so disappointed."
        new_line(2)
    end

    def get_cmd
        print "Type 'help' for list of possible commands."
        new_line(2)
        print "Which direction will you take?"
        new_line
        return gets.chomp.downcase
    end

    def cmd_not_found
        print "Please enter a valid command."
        new_line
    end

    def ask(question, filter = nil)
        if filter
            match = false
            answer = nil
            while match == false
                print UI_ARROW.red + question.light_white + " "
                answer = gets.chomp
                if answer.match(filter)
                    return answer
                else
                    print "Sorry, please try again.".red
                    new_line
                    new_line
                end
            end
        else
            print "\u2712 ".red + question.light_white + " "
            return gets.chomp
        end
    end

    # draw a frame to surround text
    def draw_frame(args)
        # figure out width automatically
        text = args[:text]
        width = get_max_size_from_array(text)
        draw_top_frame(width)
        text.each do |t|
            t_size = get_real_size(t)
            draw_vert_frame_begin
            if t.kind_of?(Array)
                t.each do |s|
                    print s
                end
            else
                print t
            end
            (width - (t_size + 4)).times do
                print " "
            end
            draw_vert_frame_end
            new_line
        end
        draw_bottom_frame(width)
    end

    def player_dead(args)
        story = args[:story]
        new_line
        text = story.player_dead
        draw_frame(:text => text)
        new_line
      end
    
    private
  
    def draw_vert_frame_begin
        print UI_FRAME_VERTICAL.yellow + " "
    end
    def draw_vert_frame_end
        print " " + UI_FRAME_VERTICAL.yellow
    end
    def draw_top_frame(width)
        print UI_FRAME_UPPER_LEFT.yellow
        (width - 2).times do
            print UI_FRAME_HORIZONTAL.yellow
        end
        print UI_FRAME_UPPER_RIGHT.yellow
        new_line
    end
    def draw_bottom_frame(width)
        print UI_FRAME_LOWER_LEFT.yellow
        (width - 2).times do
            print UI_FRAME_HORIZONTAL.yellow
        end
        print UI_FRAME_LOWER_RIGHT.yellow
        new_line
    end
    # Returns actual length of text accounting for UTF-8 and ANSI
    def get_real_size(text)
        if text.kind_of?(Array)
            text.size
        else
            text.uncolorize.size
        end
    end
    # Returns size of longest string in array
    def get_max_size_from_array(array)
        max = 0
        array.each do |s|
            s_size = get_real_size(s)
            max = s_size if s_size >= max
        end
        max + 4
    end
end