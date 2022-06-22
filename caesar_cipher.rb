def caesar_cipher(string, shift_factor)
  lower_letters = Array ("a".."z")

  upper_letters = Array ("A".."Z")

  string.split("").map do |letter|
    if lower_letters.include?(letter)
      lower_letters[lower_letters.index(letter) - (26 - shift_factor)]
    elsif upper_letters.include?(letter)
      upper_letters[upper_letters.index(letter) - (26- shift_factor)]
    else
      letter
    end
  end.
    join("")
end