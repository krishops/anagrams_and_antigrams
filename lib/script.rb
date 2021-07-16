#!/usr/bin/ruby
require_relative 'anagrams_and_antigrams'

new_check = Anagram.new()

puts 'Enter the words you want to compare'
word1 = gets.chomp
word2 = gets.chomp
puts word1
puts word2
new_check.check_anagram(word1, word2)
puts

