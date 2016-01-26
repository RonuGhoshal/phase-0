def separate_comma_refactored(int)
   result = ""
   int.to_s.reverse!.split('').each_slice(3).to_a.each do |subarray|
     result = result + subarray.join + ","
   end
   result = result.chop.reverse
   result
end

start = Time.now
100000.times do
  separate_comma_refactored(999999999)
end
puts Time.now - start