dictionary = ["below", "down", "fox", "go", "brown", "going", "black", "horn", "how", "howdy", "vow", "it", "i", "low", "own", "part", "partner", "sit", "my"]

def sub_strings(string, dictionary)
  results = {}
  dictionary.each { |word| results[word] = string.downcase.scan(word).count if string.downcase.scan(word).count.positive? }
  results
end
