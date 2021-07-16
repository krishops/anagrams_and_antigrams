  
require('rspec')
require('anagrams_and_antigrams')
require('pry')

describe('#anagrams') do
  it("returns an array of letters in a given word") do
    word = Anagram.new("ruby")
    expect(word.check_anagram).to(eq(["r", "u", "b", "y"]))
  end
  
  it("returns an array of letters in a given sentence, ignoring spaces") do
    word = Anagram.new("hello world")
    expect(word.check_anagram).to(eq(["h", "e", "l", "l", "o", "w", "o", "r", "l", "d"]))
  end

  it("sorts the array alphabetically") do
    word = Anagram.new("ruby")
    expect(word.check_anagram).to(eq(["b", "r", "u", "y"]))
  end
end