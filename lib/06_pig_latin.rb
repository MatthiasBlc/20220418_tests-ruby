def translate(str)
  words = str.split(" ")
  new_word =[]

  for word in words
    word == word.capitalize ? isCap = true : isCap = false
    word[-1] =~ /[[:punct:]]/ ? punctuation = word[-1] : punctuation = ""
    word = word.chomp(punctuation)

    if word[0] =~ /[aeiouy]/
      word += "ay"
    elsif word[0..2] == "sch"
      word = word[3..-1] + "schay"
    elsif word[0..1] == "qu"
      word = word[2..-1] + "quay"
    elsif word[1..2] == "qu"
      word = word[3..-1] + word[0] + "quay"
    else
      vowel_index = word.split(//).find_index {|i| word[i]=~ /[aeiouy]/}
      if vowel_index.nil? == false
        word = word[vowel_index..-1] + word[0,vowel_index] + "ay"
      else
        word += "ay"
      end
    end
    new_word << (isCap ? word.capitalize : word) + punctuation
  end
  return new_word.join(" ")
end