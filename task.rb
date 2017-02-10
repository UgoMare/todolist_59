class Task

  attr_accessor :title
  def initialize(title)
    @title = title
    @done = false
  end

  def mark_as_done
    @done = true
  end

  def done?
    return @done
  end
end
