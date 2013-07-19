def unique_characters?(string)
	return false unless string.is_a? String
	return false if string.length > 128 # ASCII strings only have 128 possible unique chars
	sorted = string.split('').sort
	sorted.length.times do |index|
		return false if sorted[index] == sorted[index + 1]
	end
	true
end

tests = [ unique_characters?("jason benn") == false,
	unique_characters?("dback") == true,
	unique_characters?("") == true,
	unique_characters?(nil) == false ]

if tests.all?
	puts ":)"
else
	puts ":("
end
