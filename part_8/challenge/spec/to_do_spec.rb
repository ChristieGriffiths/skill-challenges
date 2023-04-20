require "to_do"

describe Todo do 
    it "returns users todo when called" do
        running = Todo.new("running")
        expect(running.task).to eq "running"
    end 
end 