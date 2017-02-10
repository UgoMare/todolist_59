# 1. [ ] Faire la vaiselle
# 2. [X] Ranger

class View
  def list(tasks)
    tasks.each_with_index do |task, index|
      status = task.done? ? '[X]' : '[ ]'
      puts "#{index + 1}. #{status} #{task.title}"
    end
  end

  def add
    puts "Quelle tache voulez vous ajouter ?"
    print '> '
    return gets.chomp
  end

  def ask_for_task_index
    puts "Quelle tache voulez vous marquer a fini ?"
    print '> '
    return gets.chomp.to_i - 1
  end
end
