  
require('rspec')
require('anagrams_and_antigrams')
require('pry')

describe('#check_anagram') do
  it("checks if two words are anagrams") do
    new_check = Anagram.new("ruby", "bury")
    expect(new_check.check_anagram).to(eq("These words are anagrams"))
  end

  it("checks if two words with different cases are anagrams") do
    new_check = Anagram.new("Ruby", "Bury")
    expect(new_check.check_anagram).to(eq("These words are anagrams"))
  end

  it("checks if inputs are words") do
    new_check = Anagram.new("pkmn", "kmpn")
    expect(new_check.check_anagram).to(eq("You need to input actual words"))
  end

  it("checks if inputs are antigrams - test 1") do
    new_check = Anagram.new("hi", "bye")
    expect(new_check.check_anagram).to(eq("These words have no letter matches and are antigrams"))
  end

  it("checks if inputs are antigrams - test 2") do
    new_check = Anagram.new("desk", "chair")
    expect(new_check.check_anagram).to(eq("These words have no letter matches and are antigrams"))
  end

  it("checks if inputs are anagrams") do
    new_check = Anagram.new("foo", "foobar")
    expect(new_check.check_anagram).to(eq("These words are not anagrams or antigrams"))
  end

  it("checks if two sentences are anagrams") do
    new_check = Anagram.new("Clint Eastwood", "Old West action")
    expect(new_check.check_anagram).to(eq("These words are anagrams"))
  end

  it("checks if two sentences with punctuation are anagrams") do
    new_check = Anagram.new("Clint Eastwood.", "Old West action!")
    expect(new_check.check_anagram).to(eq("These words are anagrams"))
  end
end