class Link < Post
  def initialize
    super

    @url = ''
  end

  def read_from_console
    puts "Enter link url:"
    @url = STDIN.gets.chomp

    puts "What's the link?"
    @text = STDIN.gets.chomp
  end
  
  def to_strings
    time_string = "Created at: #{@created_at.strftime("%Y.%m.%d,  %H:%M:%S")} \n"

    [@url, @text, time_string]
  end
end