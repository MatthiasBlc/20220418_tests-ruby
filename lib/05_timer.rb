def time_string(total_sec)
  h = (total_sec /3600).to_i
  m = ((total_sec % 3600) /60).to_i
  s = (total_sec - 3600*h - 60*m).to_i
  return "#{h.to_s.rjust(2,"0")}:#{m.to_s.rjust(2,"0")}:#{s.to_s.rjust(2,"0")}"
end