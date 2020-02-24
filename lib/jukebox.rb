require 'pry'

def run(songs)

end

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  songs.each_with_index {|song, index|
    puts "#{index+1}. #{song}"
  }
end

def play(songs)
  puts "Please enter a song name or number:"
  song_index = nil
  user_input = gets.strip

  if (1..songs.length).include?(user_input.to_i)
    song_index = user_input.to_i - 1
  else
    songs.each_with_index {|song, index|
      song_index = index if user_input == song
    }
  end
  if song_index
    puts "Playing #{songs[song_index]}"
  else
    puts "Invalid input, please try again."
  end
end

def exit_jukebox
  puts "Goodbye!"
end

def run(songs)
  loop do

  puts "Please enter a command:"
  user_input = gets.strip

  case user_input
    when "exit"
      exit_jukebox
      break
    when "help"
      help
    when "play"
      play(songs)
    when "list"
      list(songs)
  end
end

end
