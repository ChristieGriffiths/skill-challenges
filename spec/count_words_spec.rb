# that takes a string as an argument and returns the number of words in that string.
require 'count_words' 

describe 'count_words' do
  it "takes a string and returns number of words in that string" do 
    string = count_words("This is a string containing seven words")
    expect(string).to eq 7
  end 
end 
