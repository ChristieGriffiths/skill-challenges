require 'task_tracker' 

describe "task_tracker" do 
  it "return true when text contains '#TODO'" do 
    task = task_tracker("pans#TODO")
    expect(task).to eq true 
  end 

  context "returns false when dosen't contain '#TODO'" do 
    it "false when #TODO is lowercase" do 
      task = task_tracker("pans#todo")
      expect(task).to eq false
    end 

    it "false when string is empty" do 
      task = task_tracker("")
      expect(task).to eq false
    end 

    it "false when string only contains #" do 
      task = task_tracker("pans#")
      expect(task).to eq false
    end 
  end

end 