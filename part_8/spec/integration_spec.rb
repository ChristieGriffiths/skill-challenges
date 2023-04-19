require 'diary'
require 'diary_entry'

describe Diary do 
  context "when we add an entries" do
    it "returns list of those entries" do
      diary = Diary.new
      monday = DiaryEntry.new("Monday", "I flew to Brazil.") 
      tuesday = DiaryEntry.new("Tuesday", "I flew home") 
      diary.add(monday)
      diary.add(tuesday)
      expect(diary.all).to eq [monday, tuesday]
    end
  end
  
  context "returns word count" do 
    it "from entire diary" do
      diary = Diary.new
      monday = DiaryEntry.new("Monday", "I flew to Brazil.")
      diary.add(monday)
      result = monday.count_words
      expect(result).to eq 5
    end
  end 

end 