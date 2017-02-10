class Router
  def initialize(controller)
    @controller = controller
    @run = true
  end

  def run
    while @run do
      #list all actions
      print_menu
      #ask the user for an action
      print '> '
      action = gets.chomp.to_i
      #do the action
      do_action(action)
    end
  end

  private
  def print_menu
    puts "1 - List all tasks"
    puts "2 - Add a task"
    puts "3 - Mark a task as done"
    puts "0 - Exit"
  end

  def do_action(action)
    case action
    when 1
      @controller.list
    when 2
      @controller.add
    when 3
      @controller.mark_as_done
    when 0
      @run = false
      puts "Bye bye!"
    else
      puts 'Wrong action'
    end
  end
end




