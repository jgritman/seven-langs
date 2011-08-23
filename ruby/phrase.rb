phrase = Regexp.new("Apollo")
f = File.new("homer.txt")
f.each do |line| 
	puts "#{f.lineno}: #{line}" if (line =~ phrase)
end
