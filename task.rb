require 'date'

class Task < Post
  def initialize
    super

    @due_date = Time.now
  end

  def read_from_console
    puts "Write the task: "
    @text = STDIN.gets.chomp

    puts "When should it be done?(format: dd.mm.yyyy)"
    input = STDIN.gets.chomp

    @due_date = Date.parse(input)
  end
  
  def to_strings
    deadline = "Deadline: #{@due_date.strftime('%Y.%m.%d')}"
    
    time_string = "Created at: #{@created_at.strftime('%Y.%m.%d, %H:%M:%S')} \n"

    [deadline, @text, time_string]
  end
end