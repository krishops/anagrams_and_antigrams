class Anagram
  def initialize(word)
    @word = word
  end

  def check_anagram
    one_word = @word.delete(' ')
    word_array = one_word.split("")

  end
end
