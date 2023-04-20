require 'to_do_list'

describe TodoList do 
  context "when user returns empty" do 
    it "incomplete list, it returns message" do 
      today = TodoList.new
      expect(today.incomplete).to eq "You have no todos!"
    end 

    it "complete list, it returns message" do 
    today = TodoList.new
    expect(today.complete).to eq "You haven't completed anything, yet!"
    end
  end 
end 