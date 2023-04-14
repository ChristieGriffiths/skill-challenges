def punctuation_checker(string)
  return false if string == ""
  first_letter = string[0]
  starts_with_capital = first_letter.upcase == first_letter
  starts_with_capital && string.end_with?(".", "?", "!") 
end 
