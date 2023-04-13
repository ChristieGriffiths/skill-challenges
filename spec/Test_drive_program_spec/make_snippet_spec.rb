require 'make_snippet'

# string as an argument and returns the first five words and then a '...' if there are more than that.


describe 'make_snippet' do
  it "returns inputed string" do
    string = make_snippet("Hello") 
    expect(string).to eq "Hello"
  end

  it "if string size greater than 5 returns first 5, followed by '...'" do 
    string = make_snippet("Hello there")
    expect(string).to eq "Hello..."
  end 

end