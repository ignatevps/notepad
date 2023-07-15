require_relative 'lib/post'
require_relative 'lib/memo'
require_relative 'lib/link'
require_relative 'lib/task'

puts "What do you want to write?"

choices = Post.post_types

choice = -1

until choice >= 0 && choice < choices.size
  choices.each_with_index do |type, index|
    puts "\t#{index}. #{type}"
  end

    choice = gets.to_i
end

entry = Post.create(choice)

entry.read_from_console

entry.save

puts "Saved!"