class DiaryEntry
    def initialize(entry)
        @entry = entry
    end

    def return_entry
        "#{@entry}" 
    end 

    def reading_amount(wpm,time)
        wpm * time 
    end 

end 