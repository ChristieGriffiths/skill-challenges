class DiaryAndTodos

  def initialize
    @diary = []
    @todos = []
  end 

  def add_diary_entry(entry)
    @diary << entry 
  end 

  def add_todo_entry(todo)
    @todos << todo 
  end 

  def all_entries
    entire_diary = []
    @diary.each { |entry| entire_diary << entry.return_entry }
    entire_diary
  end 

  def all_todos
    todo_list = []
    @todos.each { |todo| todo_list << todo.return_todo }
    todo_list
  end 

  def phone_number
    entries_with_phone_number = []
    all_entries.map do |entry| 
      entry.split(" ").each {|section| entries_with_phone_number << section if section.start_with?("07") && section.length == 11 }
    end 
    entries_with_phone_number
  end 

  def enough_time_to_read(wpm, time)
    result = []
    chunk = wpm * time 
    for entry in @diary 
      # if entry.return_entry.length <= chunk 
      #   @result << entry.return_entry
      #   p @result 
      # end

    result << entry.return_entry if entry.return_entry.split(" ").length <= chunk 
    end
    result = result.sort_by { |str| str.length }
    result[-1]
  end 

end 