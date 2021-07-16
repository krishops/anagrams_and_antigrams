class Anagram
  def initialize(word)
    @word = word
    @comp_word
  end

  def check_anagram
    one_word = @word.delete(' ')
    word_array = one_word.split("")
    # word_array.sort
  end
end
