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
    elsif (word1_array != word2_array)
      "These words are not anagrams or antigrams"
    end
  end
end


# word1_array.each do |letter, i|
#   if letter = word2_array[i]


  # word1_no_space = @word1.delete(' ')
  #   word_array1 = word1_no_space.downcase.split("")
  #   word_array2 = @word2.split("")
  #   # word_array.sort
  # end

     
      # (word1_array.all?(word2_array) == false)
  
      # binding.pry
      # (@word1.downcase.scan(//) != @word2.downcase.scan(//))