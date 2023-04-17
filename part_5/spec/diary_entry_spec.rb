require 'diary_entry'

describe DiaryEntry do 
  it "takes an entry and returns some information about it" do 
    diary = DiaryEntry.new("My first week", "On the third day")
    expect(diary.title).to eq "My first week"
    expect(diary.contents).to eq "On the third day"
    expect(diary.count_words).to eq 4
  end

  it "tells us how long it takes the user to read their entry" do  
    diary = DiaryEntry.new("My first week", "On the third day")
    expect(diary.reading_time(16)).to eq 1
  end 

  context "gives the user a chunk of their diary that they can read in a specific amount of time" do 

    it "reading_chunk called once" do 
      diary = DiaryEntry.new("My first week", "On the third day")
      expect(diary.reading_chunk(2, 1)).to eq "On the"
    end 

    it "reading_chunk called twice" do 
      diary = DiaryEntry.new("My first week", "On the third day")
      diary.reading_chunk(2, 1)
      expect(diary.reading_chunk(2, 1)).to eq "third day"
    end 

    it "reading_chunk called three times" do 
      diary = DiaryEntry.new("My first week", "On the third day")
      expect(diary.reading_chunk(2, 1)).to eq "On the"
      expect(diary.reading_chunk(2, 1)).to eq "third day"
      expect(diary.reading_chunk(2, 1)).to eq "On the"
    end

  end 
end 
