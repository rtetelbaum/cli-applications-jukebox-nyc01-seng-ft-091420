require 'pry'

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
  numbered_list = []
  songs.each_with_index do |song, index|
    numbered_list[index] = {:number => index + 1, :song => song}
  end
  numbered_list.each do |track|
    if input == track[:number].to_s || input == track[:song]
      puts "Playing #{track[:song]}"
    elsif input != track[:number].to_s && input != track[:song]
      puts "Invalid input, please try again"
    end
  end
end

def list(songs)
  songs.each_with_index do |song, index|
    puts "#{index + 1}. #{songs[index]}"
  end
end