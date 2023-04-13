require 'reading_speed'

RSpec.describe "estimate of reading speed for text" do 

  xit 'take a string and returns the number of words' do
    result = reading_speed('hello world')

    expect(result).to eq ["hello", "world"]
  end

  it 'takes a string of many length and returns the time it would take the user to read it' do
    result = reading_speed('hello world')
    result_2 = reading_speed('hello world blah')

    expect(result).to eq 0.6
    expect(result_2).to eq 0.9
  end

end 