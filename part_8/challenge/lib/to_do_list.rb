
class TodoList
  def initialize
    @to_do_list = []
  end

  def add(todo)
    @to_do_list << todo 
  end

  def incomplete
    incomplete = []
    return "You have no todos!" if @to_do_list.empty?
    @to_do_list.map { |todo| incomplete << todo.task if todo.done? == false }
    if incomplete.empty?
      []
    else 
      incomplete.join(", ")
    end 
  end

  def complete
    completed_list = []
    @to_do_list.each do |todo| 
      completed_list << todo.task if todo.done? == true 
      end 
    return "You haven't completed anything, yet!" if completed_list.empty?
    completed_list.join(", ")
  end

  def give_up!
    @to_do_list.each do |todo| 
      todo.mark_done!
    end 

    "all todos have been completed"
    # Marks all todos as complete
  end
end

