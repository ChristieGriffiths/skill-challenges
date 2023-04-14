require 'punctuation_checker'

RSpec.describe 'a method that verifies sentence opens and closes correctly' do 
  it "returns false when given empty string" do 
    result = punctuation_checker("")
    expect(result).to eq false
  end 

  it "returns false when fails to end in punctuation but starts correctly" do 
    result = punctuation_checker("Hey there")
  end 
  
  context "true when given a correctly capitalized and punctuated string." do 
    it "returns true when given a string that starts with " do 
      result = punctuation_checker("Hey there.")
      expect(result).to eq true 
    end

    it "returns true when given a string that starts with " do 
      result = punctuation_checker("Hey there?")
      expect(result).to eq true 
    end

    it "returns true when given a string that starts with " do 
      result = punctuation_checker("Hey there!")
      expect(result).to eq true 
    end
  end 

end 