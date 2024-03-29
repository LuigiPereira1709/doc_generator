require_relative 'src/utils/openai_utils'
require_relative 'src/services/translator'

puts "1- Text"
puts "2- Music"
choose = gets.chomp.to_i

case choose
when 1
  puts "Text will translate"
  text = gets.chomp
  origin_country = gets.chomp
  destination_language = gets.chomp
  prompt = Translator.text(text, origin_country, destination_language)
when 2
  puts "Music will translate"
  letter = gets.chomp
  origin_country = gets.chomp
  destination_language = gets.chomp
  prompt = Translator.music(letter, origin_country, destination_language)
else
  puts "Invalid choice"
  exit
end

puts ChatUtil.chat(prompt)
