def make_snippet(string)
  if string.size > 5
    return string[0..4] + "..."
  else 
    return string
  end 
end 