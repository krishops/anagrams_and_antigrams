class Anagram
  def initialize(word1, word2)
    @word1 = word1
    @word2 = word2
  end

  def check_anagram
    word1_array = @word1.downcase.delete('^a-z').split("").sort
    word2_array = @word2.downcase.delete('^a-z').split("").sort
    if ((@word1.downcase.scan(/[aeiou]/i).length == 0) && (@word2.downcase.scan(/[aeiou]/i).length == 0))
      "You need to input actual words"
    elsif ((word1_array.any? {|word1| word2_array.include?(word1)}) == false)
      "These words have no letter matches and are antigrams"
    elsif (word1_array == word2_array)
      "These words are anagrams"
    else
      "These words are not anagrams or antigrams"
    end
  end
end