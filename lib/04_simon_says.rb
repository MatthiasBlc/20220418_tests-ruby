def echo(text)
  text
end

def shout(text)
  text.upcase
end


def repeat(text, r=2)
  txt_rep = ("#{text} "*r).chomp(" ")
end

def start_of_word(text, n)
   text[0, n]
end

def first_word(text)
  text.split.first

end


def titleize(text)
   (text.capitalize.split.each {|word| if word.length > 3 then word.capitalize! end}).join(" ")
end