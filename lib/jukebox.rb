require 'pry'

# def say_hello(name)
#   "Hi #{name}!"
# end
 
# puts "Enter your name:"
# users_name = gets.strip
 
# puts say_hello(users_name)

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def play(songs)
  puts "Please enter a song name or number:"
  input = gets.strip
   
end

def list(songs)
  song_array = []
  songs.each_with_index do |song, index|
    puts "#{index + 1}. #{songs[index]}"
    song_array[index] = {:number => index + 1, :song => song}
  end
  song_array
end