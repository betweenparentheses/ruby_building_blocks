#working version!

def caesar_cipher (string, num)
  shift = num % 26
  chars = string.split(//)
  chars.map! do |char|
  	char_num = char.ord
		was_char = false
		was_char = true if (char =~ (/\w/))
		if (char_num <= 90 && was_char && (char_num + shift) > 90)
			char_num -= 26 
		elsif ((char_num >= 97) && was_char && (char_num + shift) > 122)
			char_num -= 26
		end
		char_num += shift if was_char
		char = char_num.chr
	end
	chars.join
end

print "Enter a phrase to put into secret code: "
phrase = gets.chomp
print "Enter a number that represents the distance you want to shift each letter down the alphabet (HINT--Use negative numbers to decode):"

shift_num = gets.chomp.to_i
puts caesar_cipher(phrase, shift_num)
