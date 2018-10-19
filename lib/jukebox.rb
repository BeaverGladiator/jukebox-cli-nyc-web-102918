
require "pry"

songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

# def say_hello(name)
#   "Hi #{name}!"
# end 

# puts "Enter your name:"
# users_name = gets.chomp

# puts say_hello(users_name)



def help 
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end 

def list(songs)
  songs.each_with_index { |item,index| puts "#{index + 1}. #{item}"}
end 

def play(songs)
  puts "Please enter a song name or number:"
  song_input = gets.chomp
  # if song_input.is_a?(Integer) && song_input.between?(1, songs.length)
  if song_input.is_a?(Integer) && song_input.between?(1, songs.length)
    puts  "Playing #{songs[song_input - 1]}" 
  elsif 
    if songs.include?(song_input)
      songs.each do |song|
        if song = song_input
          puts "Playing #{song}"
        end 
      end 
    else 
      puts "Invalid input, please try again"
    end
  else 
    puts "Invalid input, please try again"
  end
end 



