  
require('rspec')
require('anagrams_and_antigrams')
require('pry')

# 9:50 - start over
# tests to write: check if two words are anagrams
                      # probably don't need to test if code returns arrays, just write test for comparison, so a boolean I guess CHECK
                # add code to account for cases: Eat and Tea will return true CHECK
                # rules for inputs CHECK, phrases aren't anagrams - will be tricky
                # accounting for sentences should be pretty simple based on what I already know

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

end





# describe('#check_anagram') do
#   it("returns an array of letters in a given word") do
#     word1 = Anagram.new("ruby")
#     expect(word1.check_anagram).to(eq(["r", "u", "b", "y"]))
#   end
  
#   it("returns an array of letters in a given sentence, ignoring spaces") do
#     word1 = Anagram.new("hello world")
#     expect(word1.check_anagram).to(eq(["h", "e", "l", "l", "o", "w", "o", "r", "l", "d"]))
#   end

#   # it("sorts the array alphabetically") do
#   #   word = Anagram.new("ruby")
#   #   expect(word.check_anagram).to(eq(["b", "r", "u", "y"]))
#   # end

#   it("turns all uppercase letters into lowercase") do
#     word1 = Anagram.new("RUby")
#     expect(word1.check_anagram).to(eq(["r", "u", "b", "y"]))
#   end

#   it("returns two arrays from two given words") do
#     new_check = Anagram.new("ruby", "bury")
#     expect(new_check.check_anagram).to(eq(["r", "u", "b", "y"], ["b", "u", "r", "y"]))
#   end
# end