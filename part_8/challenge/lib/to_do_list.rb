# File: lib/todo_list.rb
class TodoList
  def initialize
    @to_do_list = []
    @completed_list = []
  end

  def add(todo) # todo is an instance of Todo
    @to_do_list << todo 
  end

  def incomplete
    return "You have no todos!" if @to_do_list.empty?
    p @to_do_list
    @to_do_list
  end

  def complete
    return "You haven't completed anything, yet!" if @completed_list.empty?
  end

  def give_up!
    # Marks all todos as complete
  end
end

