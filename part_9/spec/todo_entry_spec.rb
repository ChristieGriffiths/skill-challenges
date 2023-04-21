require 'todo_entry'


describe TodoEntry do 
    context "takes an entry" do 
      it "returns the todo" do 
        monday = TodoEntry.new("spread ashes")
        expect(monday.return_todo).to eq "spread ashes"
      end
    end   
end