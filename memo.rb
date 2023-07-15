class Memo < Post

  def initialize
    super
  end

  def read_from_console
    puts "The new memo (to complete, type \"end\" on a new line):"

    line = nil

    while line != "end"
      line = STDIN.gets.chomp
      @text << line
    end

    @text.pop 
  end
  
  def to_strings
    time_string = "Created at: #{@created_at.strftime("%Y.%m.%d,  %H:%M:%S")} \n"

    @text.unshift(time_string)
  end
end
