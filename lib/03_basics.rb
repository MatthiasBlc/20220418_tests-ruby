def who_is_bigger(a,b,c)
  stg= "abc"
  max_abc_index = [a,b,c].index([a,b,c].compact.max)
  #compact -> retire nil
  return [a,b,c].include?(nil) ? "nil detected" : "#{stg[max_abc_index]} is bigger"
  # tab = [a,b,c]
  # tab.each {|i| if i.nil? == true then "nil detected"; next end}
  # tab.each {|i| if i == tab.max then "#{i} is bigger" end}
end

def reverse_upcase_noLTA(txt)
  return (txt.reverse.upcase).gsub(/[LTA]/, "")
end

def array_42(tab)
  return tab.include?(42)
end

def magic_array(tab)
  tab = tab.flatten.grep(Numeric).map{|e| e*2}
  tab.reject{|n| n % 3 == 0}.uniq.sort
  #Voir mutables non mutables
  #  tab = tab.each { |i| if i % 3 == 0 then tab.delete(i) end }.uniq.sort
  #  return tab.each { |i| if i % 3 == 0 then tab.delete(i) end }
end


