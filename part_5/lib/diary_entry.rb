
class DiaryEntry
  def initialize(title, contents) # title, contents are strings
    @title = title 
    @contents = contents
    @chunk_called = 0 
  end

  def title
    @title
  end

  def contents
    @contents
  end

  def count_words
    @contents.split(" ").size
  end

  def reading_time(wpm)
    (count_words / wpm.to_f).ceil
    
    # wpm is an integer representing the number of words the
    # user can read per minute
    # Returns an integer representing an estimate of the reading time in minutes
    # for the contents at the given wpm.
  end

  def reading_chunk(wpm, minutes)
    if @chunk_called == 1 
      @chunk_called += 1 
      start = @words
      finish = (wpm * minutes)
      contents_split = @contents.split(" ")
      contents_joined = contents_split[start...(start + finish)].join(" ")
    else 
      @chunk_called += 1 
      @words = (wpm * minutes)
      contents_split = @contents.split(" ")
      contents_joined = contents_split[0...@words].join(" ")
    end 

    # `wpm` is an integer representing the number
                                  # of words the user can read per minute
                                  # `minutes` is an integer representing the
                                  # number of minutes the user has to read
    # Returns a string with a chunk of the contents that the user could read
    # in the given number of minutes.

    # If called again, `reading_chunk` should return the next chunk, skipping
    # what has already been read, until the contents is fully read.
    # The next call after that it should restart from the beginning.
  end
end
