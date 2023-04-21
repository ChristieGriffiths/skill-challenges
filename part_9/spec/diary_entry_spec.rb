require 'diary_entry'

describe DiaryEntry do
    context "takes an entry" do
      it "returns entry" do 
        monday = DiaryEntry.new("I bought veg")
        expect(monday.return_entry).to eq ("I bought veg")
      end 
      it "returns entry" do 
        monday = DiaryEntry.new("I bought veg")
        result = monday.reading_amount(10, 2)
        expect(result).to eq 20
      end 
    end 
end