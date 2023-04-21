require 'diary_and_todo_list'
require 'diary_entry'
require 'todo_entry'

describe DiaryAndTodos do
  context "takes multiple diary entries" do 
    it "returns all entries" do 
      new_diary = DiaryAndTodos.new
      monday = DiaryEntry.new("I bought veg")
      tuesday = DiaryEntry.new("I sold a dog")
      new_diary.add_diary_entry(monday)
      new_diary.add_diary_entry(tuesday)
      expect(new_diary.all_entries).to eq ["I bought veg", "I sold a dog"]
    end 
  end 
  context "takes multiple todos" do 
    it "returns all todos" do 
      new_diary = DiaryAndTodos.new
      halloumi = TodoEntry.new("Eat Halloumi")
      cheddar= TodoEntry.new("Eat Cheddar")
      new_diary.add_todo_entry(halloumi)
      new_diary.add_todo_entry(cheddar)
      expect(new_diary.all_todos).to eq ["Eat Halloumi", "Eat Cheddar"]
    end 
  end 

  describe "#phone_number" do
    it "returns and diary entries including phone numbers" do 
    new_diary = DiaryAndTodos.new
    monday = DiaryEntry.new("07801131080")
    tuesday = DiaryEntry.new("I sold a dog 07801131")
    new_diary.add_diary_entry(monday)
    new_diary.add_diary_entry(tuesday)
    result = new_diary.phone_number
    expect(result).to eq ["07801131080"]
    end 
  end 

  describe "#enough_time_to_read" do 
    it "returns a passage user have time to read in given time & given reading speed" do 
      new_diary = DiaryAndTodos.new
      monday = DiaryEntry.new("I bought veg")
      tuesday = DiaryEntry.new("I sold a dog")
      new_diary.add_diary_entry(monday)
      new_diary.add_diary_entry(tuesday)
      expect(new_diary.enough_time_to_read(3,1)).to eq "I bought veg"
    
    end 
  end 
end