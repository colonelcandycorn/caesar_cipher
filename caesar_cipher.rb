def caesar_cipher(string, shift_factor)
  lower_letters =
    ("a".."z").reduce(Array.new()) do |arr, letter|
      arr.push(letter)
    end

  upper_letters =
    ("A".."Z").reduce(Array.new()) do |arr, letter|
      arr.push(letter)
    end

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
