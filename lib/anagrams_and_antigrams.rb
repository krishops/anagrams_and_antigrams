class Anagram
  def initialize(word1, word2)
    @word1 = word1
    @word2 = word2
  end

  def check_anagram
    (@word1.downcase.split("").sort) == (@word2.downcase.split("").sort)
    "These words are anagrams"
end

end



  # word1_no_space = @word1.delete(' ')
  #   word_array1 = word1_no_space.downcase.split("")
  #   word_array2 = @word2.split("")
  #   # word_array.sort
  # end