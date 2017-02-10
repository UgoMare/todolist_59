require_relative 'task'
require_relative 'view'

class Controller
  def initialize(repository)
    @repository = repository
    @view = View.new
  end

  def list
    @view.list(@repository.all)
  end

  def add
    new_title = @view.add
    new_task = Task.new(new_title)
    @repository.add(new_task)
  end

  def mark_as_done
    index = @view.ask_for_task_index
    task = @repository.find(index)
    task.mark_as_done unless task.done?
  end
end






