def separate_comma(int)
  if int < 1000
    return int.to_s
  else
    int = int.to_s
    number_of_commas = (int.length - 1)/3
    index = -1
    number_of_commas.times do
      index = index -3
      int.insert(index, ",")
      index = index - 1
    end
    return int
  end
end


start = Time.now
100000.times do
  separate_comma(999999999)
end
puts Time.now - start