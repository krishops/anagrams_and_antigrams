  
require('rspec')
require('anagrams_and_antigrams')
require('pry')

describe('#anagrams') do
  it("returns an array of letters in a given word") do
    word = Anagram.new("ruby")
    expect(word.check_anagram).to(eq(["r", "u", "b", "y"]))
  end
end