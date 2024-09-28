# Create the method to iterate through the dictionary and return words that are included
def substrings(string, dictionary)
  new_array = []
  lower_case_string_array = string.downcase.split
  result = lower_case_string_array.each {|word|
    dictionary.select {|dict_word|
      if word.include?(dict_word)
        new_array.push(dict_word)
      end
    }
  }
  p new_array.tally
  return new_array.tally
end

# Create the Dictionary that the example used
dictionary = [
  "below", 
  "down", 
  "go", 
  "going", 
  "horn", 
  "how", 
  "howdy", 
  "it", 
  "i", 
  "low", 
  "own", 
  "part", 
  "partner", 
  "sit"
]

# Run the method
substrings("Howdy partner, sit down! How's it going?", dictionary)