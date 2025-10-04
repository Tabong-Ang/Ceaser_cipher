def caesar_cipher()
  puts "Enter the string to be encoded:"
  string = gets.chomp()
  puts "Enter the shift factor (number of positions to shift):"
  shift_factor = gets.chomp().to_i
  result = ""
  string_upper = ('A'..'Z').to_a 
  string_lower = ('a'..'z').to_a
  
  # Iterate through each character in the input string
  string.each_char do |char|
    if string_upper.include?(char)
      # Handle uppercase letters
      current_index = string_upper.index(char)
      new_index = (current_index + shift_factor) % 26
      result += string_upper[new_index]
    elsif string_lower.include?(char)
      # Handle lowercase letters
      current_index = string_lower.index(char)
      new_index = (current_index + shift_factor) % 26
      result += string_lower[new_index]
    else
      # Handle non-letter characters (spaces, punctuation, etc.)
      result += char
    end
  end
  
  result
end

puts caesar_cipher()

