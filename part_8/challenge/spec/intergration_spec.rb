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
  end 
end