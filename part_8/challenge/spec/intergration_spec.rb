require 'to_do_list'
require 'to_do'

describe TodoList do
  context "user enters some todos" do 
    it "returns list of incomplete todos" do 
      today = TodoList.new 
      washing = Todo.new("wash linen")
      running = Todo.new("go for a run")
      today.add(washing)
      today.add(running)
      expect(today.incomplete).to eq "wash linen, go for a run"
    end 
    it "returns list of completed todos" do 
      today = TodoList.new 
      running = Todo.new("go for a run")
      washing = Todo.new("wash linen")
      today.add(running)
      today.add(washing)
      washing.mark_done!
      expect(today.complete).to eq "wash linen"
    end 
    it "marks all todo's as complete" do 
      today = TodoList.new 
      running = Todo.new("go for a run")
      washing = Todo.new("wash linen")
      today.add(running)
      today.add(washing)
      today.give_up!
      expect(today.incomplete).to eq []
    end 
  end 
end