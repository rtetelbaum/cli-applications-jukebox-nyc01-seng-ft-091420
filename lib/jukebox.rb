require 'pry'

def songs_list_helper(songs)
  songs_list = []
  songs.each_with_index do |song, index|
    songs_list[index] = {:number => index + 1, :song => song}
  end
  songs_list
end

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
  songs_list_helper(songs).each do |track|
    if input == track[:number].to_s || input == track[:song]
      puts "Playing #{track[:song]}"
    else
      puts "Invalid input, please try again"
    end
  end
end

def list(songs)
  songs.each_with_index do |song, index|
    puts "#{index + 1}. #{songs[index]}"
  end
end