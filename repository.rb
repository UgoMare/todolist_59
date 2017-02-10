class Repository
  def initialize
    @tasks = []
  end

  def all
    return @tasks
  end

  def find(index)
    return @tasks[index]
  end

  def add(new_task)
    @tasks << new_task
  end

  def delete(index)
    @tasks.delete_at(index)
  end
end
