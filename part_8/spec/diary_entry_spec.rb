require 'diary_entry'

describe DiaryEntry do 
  context "takes an entry" do 
    it "returns the total word count" do
      monday = DiaryEntry.new("Monday", "I flew to Brazil")
      expect(monday.count_words).to eq 5 
    end
  end 

  context "returns time" do
    it "for user to read entire diary(but not titles)" do
      monday = DiaryEntry.new("Monday", "I flew to Brazil.")
      expect(monday.reading_time(5)).to eq 1
    end
  end
end 