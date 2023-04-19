require "diary"

describe Diary do
  context "intially" do
    it "is empty" do
      diary = Diary.new
      expect(diary.all).to eq []
    end
  end

end